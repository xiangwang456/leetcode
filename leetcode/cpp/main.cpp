//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include "FindErrorNum.cpp"



int main() {
    Solution solu;

    vector<int> nums;
       nums.push_back(1);
       nums.push_back(2);
       nums.push_back(1);
       nums.push_back(3);
    // nums.push_back(2);

    auto name = "nana says :";

    vector<int> ans = solu.findErrorNums(nums);
    for (const int num : ans) {
        std::cout << name << num << std::endl;

    }



}