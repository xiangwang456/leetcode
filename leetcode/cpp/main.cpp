//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include "MinMoves2.cpp"



int main() {
    Solution solu;

    vector<int> nums;
       nums.push_back(1);
       nums.push_back(2);
       nums.push_back(1);
       nums.push_back(3);
    // nums.push_back(2);

    auto name = "nana says :";

    std::cout << name << solu.minMoves2(nums);

    /*vector<int> ans = solu.findErrorNums(nums);
    for (const int num : ans) {
        std::cout << name << num << std::endl;

    }*/



}