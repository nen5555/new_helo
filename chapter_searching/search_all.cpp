#include "../utils/common.hpp"
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>

class Search{
    vector<int> &num;
    std::string folderPath;
    //int target;
public:
    Search(std::vector<int> &n,std::string folder):num(n),folderPath(folder){}
    int size() const{
        return num.size();
    }
    void createVector(const int min,const int max, int length=50){
        num.clear();
        std::random_device rd;
        std::mt19937 gen(rd());
        std::uniform_int_distribution<> distr(min, max); 
        for (int i = 0; i < length; ++i) {
        num.push_back(distr(gen)); // Generate and add a new random number to the vector
    }
    }

    void swap(int &i,int &j){
        int temp=0;
        temp=i;
        i=j;
        j=temp;

    }
    void select_Sort(){
        int step=0;
        auto start = std::chrono::high_resolution_clock::now();
        
        saveState(step++,0);
        for(int i=0;i<num.size()-1;i++){
            int k=i;
            for(int j=i+1;j<num.size();j++){
                if(num[j]<num[k]){
                    k=j;
                }
            }
            swap(num[i],num[k]);
            auto end = std::chrono::high_resolution_clock::now();
            long long elapsedTime = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
            saveState(step++,elapsedTime,i,k);

        }
    }
    void bubble_Sort(){
        int step=0;
        auto start = std::chrono::high_resolution_clock::now();
        saveState(step++,0);
        for(int i=0;i<num.size()-2;i++){   
            for(int j=i;j<num.size()-1;j++){
                if(num[j]>num[j+1])
                swap(num[j],num[j+1]);
                 auto end = std::chrono::high_resolution_clock::now();
                long long elapsedTime = std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();
            saveState(step++,elapsedTime,j,j+1);
            }
        }
    }
    void drawVectorAsImage(const std::string& filename,int step,long long elapsedTime,  int highlightIndex1 = -1, int highlightIndex2 = -1, int barwidth=10,int spacing=5) {
    // 确定图像的宽度和高度
    int width = num.size() * (barwidth+spacing)+spacing; // 每个条形图的宽度为10个像素
    int height = *std::max_element(num.begin(), num.end()) + 50; // 图像高度为最大值加上10个像素的边界

    // 创建一个白色的图像
    cv::Mat image(height, width, CV_8UC3, cv::Scalar(255, 255, 255));

    // 绘制条形图
    for (size_t i = 0; i < num.size(); ++i) {
        cv::Scalar color = cv::Scalar(255, 0, 0); // 默认颜色为红色
         if (i == highlightIndex1 || i == highlightIndex2) {
            color = cv::Scalar(0, 0, 255); // 高亮颜色为蓝色
        }
        cv::rectangle(
            image,
            cv::Point(i * (barwidth+spacing)+spacing, height),
            cv::Point(i  * (barwidth+spacing)+barwidth+spacing, height - num[i]),
            color,
            cv::FILLED
        );
    }
    std::string timeText = "Time: " + std::to_string(elapsedTime / 1000.0) + "ms";
    //cv::putText(image, timeText, cv::Point(10, height - 10), cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 0), 1);
    int baseline = 0;
    cv::Size textSize = cv::getTextSize(timeText, cv::FONT_HERSHEY_SIMPLEX, 0.5, 1, &baseline);
    cv::Point textOrg((width - textSize.width) / 2, textSize.height + 10); // 调整文本位置

    cv::putText(image, timeText, textOrg, cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 0), 1);
    // 保存图像
    if (!cv::imwrite(filename, image)) {
        std::cerr << "Failed to save image: " << filename << std::endl;
    } else {
        std::cout << "Image saved as: " << filename << std::endl;
    }
}
 void saveState(int step,long long elapsedTime, int highlightIndex1 = -1, int highlightIndex2 = -1) {
         drawVectorAsImage(folderPath + "/image" + std::to_string(step) + ".png",step,elapsedTime,highlightIndex1,highlightIndex2);
     }
void createGIF(const std::string& outputFilename, const std::string& algorithmName) {   
    std::string command = "ffmpeg -y -f image2 -framerate 2 -i " + folderPath + "/image%d.png -loop 0 " + folderPath + "/" + algorithmName + "_" + outputFilename;
    std::system(command.c_str());

    // 删除当前目录下的所有图片文件
    for (const auto& entry : std::filesystem::directory_iterator(folderPath)) {
        if (entry.path().extension() == ".png") {
            std::filesystem::remove(entry.path());
        }
    }
    }

};


template<typename Func>
    long long measuretime(Func func){
        auto start = std::chrono::high_resolution_clock::now();
        func();
        auto end = std::chrono::high_resolution_clock::now();
        return std::chrono::duration_cast<std::chrono::microseconds>(end - start).count();

    }

int main(int argc,char* argv[]){
     if (argc < 2) {
        std::cerr << "Usage: " << argv[0] << " <algorithm>" << std::endl;
        return 1;
    }
    std::string algorithm = argv[1];
    std::vector<int> num;
    const std::string folderPath = "./images";
    if (!std::filesystem::exists(folderPath)) {
        std::filesystem::create_directory(folderPath);
    }
    Search search(num,folderPath);
    search.createVector(0,100,50);
    search.drawVectorAsImage(folderPath+ "/initial.png",0,0);
    
    cout<<"num 初始化为 :";
    printArray(num.data(),num.size());
    
    //long long selectSortTime = measuretime([&search]() { search.bubble_Sort(); });
    long long sortTime;
    if (algorithm == "select") {
        sortTime = measuretime([&search]() { search.select_Sort(); });
        std::cout << "num 经过 select_sort 为: ";
    } else if (algorithm == "bubble") {
        sortTime = measuretime([&search]() { search.bubble_Sort(); });
        std::cout << "num 经过 bubble_sort 为: ";
    } else {
        std::cerr << "Unknown algorithm: " << algorithm << std::endl;
        return 1;
    }
    cout << "num 经过bubble_sort为 :";
    printArray(num.data(), num.size());
    cout << "选择排序耗时: " << sortTime << " 微秒" << endl;
    search.createGIF("output.gif", algorithm);
  
}

