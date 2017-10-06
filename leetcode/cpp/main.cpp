//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include "3Sum.cpp"
#include <string>

using namespace std;

int main() {
    Solution solu;

    std::vector<int> nums;
    nums.push_back(1);
    nums.push_back(-2);
    nums.push_back(1);
    nums.push_back(0);
    nums.push_back(2);
    // nums.push_back(2);

    auto name = "nana says :";

    // std::cout << name << solu.readBinaryWatch(1);

    vector<vector<int>> ans = solu.threeSum(nums);
    for (vector<int> zero_arr : ans) {
        cout << name;
        for (int zero_num : zero_arr) {
            cout << zero_num << " ";
        }
        cout << endl;
    }





}