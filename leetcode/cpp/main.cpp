//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include "ReadBinaryWatch.cpp"
#include <string>


int main() {
    Solution solu;

    std::vector<int> nums;
       nums.push_back(1);
       nums.push_back(2);
       nums.push_back(1);
       nums.push_back(3);
    // nums.push_back(2);

    auto name = "nana says :";

    // std::cout << name << solu.readBinaryWatch(1);

    std::vector<std::string> ans = solu.readBinaryWatch(1);
    for (const std::string num : ans) {
        std::cout << name << num << std::endl;

    }



}