//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include <string>
#include "FirstMissingPositive.cpp"

using namespace std;

int main() {
    Solution solu;

    vector<int> nums;
/*    nums.push_back(1);
    nums.push_back(-2);
    nums.push_back(-3);
    nums.push_back(-1);
    nums.push_back(2);
    nums.push_back(0);
    nums.push_back(3);*/
    nums.push_back(4);
    nums.push_back(1);
    nums.push_back(7);
    nums.push_back(3);
    // nums.push_back(2);

    auto name = "nana says :";
//    cout << name << solu.firstMissingPositive(nums);

    // std::cout << name << solu.readBinaryWatch(1);

    //vector<vector<int>> ans = solu.fourSum(nums);

    next_permutation(nums.begin(), nums.end());

    for (int zero_arr : nums) {
        cout << name;
        cout << zero_arr;
        /* for (int zero_num : zero_arr) {
             cout << zero_num << " ";
         }*/
        cout << endl;
    }





}