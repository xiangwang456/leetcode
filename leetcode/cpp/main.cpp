//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include <string>
#include <limits>
#include <algorithm>
#include "SetMatrixZeroes.cpp"

using namespace std;

int main() {
    Solution solu;

    vector<int> nums;
    //vector<vector<int>> twoLayer({{1}});
    vector<vector<int>> twoLayer({
                                         {0, 0, 0, 5},
                                         {4, 3, 1, 4},
                                         {0, 1, 1, 4},
                                         {1, 2, 1, 3},
                                         {0, 0, 1, 1}
                                 });
/*
 * nums.push_back(1);
    nums.push_back(-2);
    nums.push_back(-3);
    nums.push_back(-1);
    nums.push_back(2);
    nums.push_back(0);
    nums.push_back(3);*/
    nums.push_back(9);

    // nums.push_back(2);

    auto name = "nana says :";
//    cout << name << solu.firstMissingPositive(nums);

    // std::cout << name << solu.readBinaryWatch(1);

    //vector<vector<int>> ans = solu.fourSum(nums);

    next_permutation(nums.begin(), nums.end());

    // vector<int> ans = solu.plusOne(nums);




    solu.setZeroes(twoLayer);

    for (vector<int> zero_arr : twoLayer) {
        cout << name;
        for (int zero_num : zero_arr) {
             cout << zero_num << " ";
        }
        cout << endl;
        cout << numeric_limits<int>::min();
    }

}