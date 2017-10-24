//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include <string>
#include <limits>
#include <algorithm>
#include "AdditiveNumber.cpp"

using namespace std;

int main() {

    std::string str = "Hello";
    std::vector<std::string> v;


    // uses the push_back(const T&) overload, which means
    // we'll incur the cost of copying str
    v.push_back(str);
    std::cout << "After copy, str is \"" << str << "\"\n";

    // uses the rvalue reference push_back(T&&) overload,
    // which means no strings will copied; instead, the contents
    // of str will be moved into the vector.  This is less
    // expensive, but also means str might now be empty.
    v.push_back(std::move(str));
    std::cout << "After move, str is \"" << str << "\"\n";

    std::cout << "The contents of the vector are \"" << v[0]
              << "\", \"" << v[1] << "\"\n";


    cout << "==================="<< cout<< sizeof(int) << "================" << endl;
    Solution solu;


    cout << "==================="<< solu.isAdditiveNumber("101") << "================" << endl;
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




    //solu.setZeroes(twoLayer);

    for (vector<int> zero_arr : twoLayer) {
        cout << name;
        for (int zero_num : zero_arr) {
             cout << zero_num << " ";
        }
        cout << endl;
        cout << numeric_limits<int>::min();
    }

}