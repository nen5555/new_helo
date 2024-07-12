#include "../utils/common.hpp"
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

namespace fs = std::filesystem;
constexpr int DEFAULT_VECTOR_LENGTH = 50;
constexpr int DEFAULT_BAR_WIDTH = 10;
constexpr int DEFAULT_SPACING = 5;

class SortAlgorithm {
public:
    virtual ~SortAlgorithm() = default;
    virtual void sort(std::vector<int>& nums, std::function<void(int, int)> onSwap) = 0;
    virtual std::string getName() const = 0;
};
class SelectionSort : public SortAlgorithm {
public:
    void sort(std::vector<int>& nums, std::function<void(int, int)> onSwap) override {
        for (size_t i = 0; i < nums.size() - 1; i++) {
            size_t min_idx = i;
            for (size_t j = i + 1; j < nums.size(); j++) {
                if (nums[j] < nums[min_idx]) {
                    min_idx = j;
                }
            }
            if (min_idx != i) {
                std::swap(nums[i], nums[min_idx]);
                onSwap(i, min_idx);
            }
        }
    }
    std::string getName() const override { return "select"; }
};

// 冒泡排序
class BubbleSort : public SortAlgorithm {
public:
    void sort(std::vector<int>& nums, std::function<void(int, int)> onSwap) override {
        bool swapped;
        for (size_t i = nums.size() - 1; i > 0; i--) {
            swapped = false;
            for (size_t j = 0; j < i; j++) {
                if (nums[j] > nums[j + 1]) {
                    std::swap(nums[j], nums[j + 1]);
                    swapped = true;
                    onSwap(j, j + 1);
                }
            }
            if (!swapped) break;
        }
    }
    std::string getName() const override { return "bubble"; }
};

// 插入排序
class InsertionSort : public SortAlgorithm {
public:
    void sort(std::vector<int>& nums, std::function<void(int, int)> onSwap) override {
        for (size_t i = 1; i < nums.size(); i++) {
            int key = nums[i];
            int j = i - 1;
            while (j >= 0 && nums[j] > key) {
                nums[j + 1] = nums[j];
                onSwap(j, j + 1);
                j--;
            }
            nums[j + 1] = key;
        }
    }
    std::string getName() const override { return "insert"; }
};

class Search {
    std::vector<int>& num;
    std::string folderPath;
    std::unique_ptr<SortAlgorithm> sortAlgorithm;

public:
    Search(std::vector<int>& n, const std::string& folder, std::unique_ptr<SortAlgorithm> algorithm) noexcept 
        : num(n), folderPath(folder), sortAlgorithm(std::move(algorithm)) {}

    [[nodiscard]] int size() const noexcept { return num.size(); }

    void createVector(int min, int max, int length = DEFAULT_VECTOR_LENGTH) {
        num.clear();
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_int_distribution<> distr(min, max);
        num.reserve(length);
        for (int i = 0; i < length; ++i) {
            num.emplace_back(distr(gen));
        }
    }

    void performSort() {
        int step = 0;
        auto start = std::chrono::steady_clock::now();
        saveState(step++, 0);

        sortAlgorithm->sort(num, [&](int i, int j) {
            auto now = std::chrono::steady_clock::now();
            long long elapsedTime = std::chrono::duration_cast<std::chrono::microseconds>(now - start).count();
            saveState(step++, elapsedTime, i, j);
        });
    }

    void drawVectorAsImage(const std::string& filename, int step, long long elapsedTime, 
                           int highlightIndex1 = -1, int highlightIndex2 = -1) {
        int width = num.size() * (DEFAULT_BAR_WIDTH + DEFAULT_SPACING) + DEFAULT_SPACING;
        int height = *std::max_element(num.begin(), num.end()) + 50;

        cv::Mat image(height, width, CV_8UC3, cv::Scalar(255, 255, 255));

        for (size_t i = 0; i < num.size(); ++i) {
            cv::Scalar color(255, 0, 0);
            if (i == highlightIndex1 || i == highlightIndex2) {
                color = cv::Scalar(0, 0, 255);
            }
            cv::rectangle(
                image,
                cv::Point(i * (DEFAULT_BAR_WIDTH + DEFAULT_SPACING) + DEFAULT_SPACING, height),
                cv::Point(i * (DEFAULT_BAR_WIDTH + DEFAULT_SPACING) + DEFAULT_BAR_WIDTH + DEFAULT_SPACING, height - num[i]),
                color,
                cv::FILLED
            );
        }

        std::string timeText = "Time: " + std::to_string(elapsedTime / 1000.0) + "ms";
        int baseline = 0;
        cv::Size textSize = cv::getTextSize(timeText, cv::FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseline);
        cv::Point textOrg((width - textSize.width) / 2, textSize.height + 10);

        cv::putText(image, timeText, textOrg, cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 0), 1);

        if (!cv::imwrite(filename, image)) {
            std::cerr << "Failed to save image: " << filename << std::endl;
        }
    }

    void saveState(int step, long long elapsedTime, int highlightIndex1 = -1, int highlightIndex2 = -1) {
        drawVectorAsImage(folderPath + "/image" + std::to_string(step) + ".png", step, elapsedTime, highlightIndex1, highlightIndex2);
    }

    void createGIF(const std::string& outputFilename) {
        std::string command = "ffmpeg -y -f image2 -framerate 2 -i " + folderPath + "/image%d.png -loop 0 " + 
                              folderPath + "/" + sortAlgorithm->getName() + "_" + outputFilename;
        std::system(command.c_str());

        for (const auto& entry : fs::directory_iterator(folderPath)) {
            if (entry.path().extension() == ".png") {
                fs::remove(entry.path());
            }
        }
    }

    std::string getSortAlgorithmName() const {
        return sortAlgorithm->getName();
    }
};

template<typename Func>
long long measureTime(Func func) {
    auto start = std::chrono::steady_clock::now();
    func();
    auto end = std::chrono::steady_clock::now();
    return std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
}

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <algorithm>" << std::endl;
        return 1;
    }

    std::string algorithmStr = argv[1];
    std::unique_ptr<SortAlgorithm> algorithm;

    if (algorithmStr == "select") {
        algorithm = std::make_unique<SelectionSort>();
    } else if (algorithmStr == "bubble") {
        algorithm = std::make_unique<BubbleSort>();
    } else if (algorithmStr == "insert") {
        algorithm = std::make_unique<InsertionSort>();
    } else {
        std::cerr << "Unknown algorithm: " << algorithmStr << std::endl;
        return 1;
    }

    std::vector<int> num;
    const std::string folderPath = "build/images";
    if (!fs::exists(folderPath)) {
        fs::create_directory(folderPath);
    }

    Search search(num, folderPath, std::move(algorithm));
    search.createVector(0, 100, DEFAULT_VECTOR_LENGTH);
    search.drawVectorAsImage(folderPath + "/initial.png", 0, 0);

    std::cout << "num 初始化为: ";
    printArray(num.data(), num.size());

    long long sortTime = measureTime([&search]() { search.performSort(); });

    std::cout << "num 经过 " << search.getSortAlgorithmName() << " 排序后为: ";
    printArray(num.data(), num.size());
    std::cout << "排序耗时: " << sortTime << " 微秒" << std::endl;
    search.createGIF("output.gif");

    return 0;
}
