//
// Created by zz on 2017/10/7.
// Time : O(n)
// Space : O(1)
// reference : http://blog.csdn.net/qq575787460/article/details/41215475

#include <vector>
#include <functional>
#include <algorithm>

using namespace std;

class Solution {
public:
    void nextPermutation(vector<int> &nums) {
        next_permutation(nums.begin(), nums.end());
    }

private:
    template<typename iter>
    bool nextPermutation(iter begin, iter end) {
        const auto rbegin = reverse_iterator<iter>(end);
        const auto rend = reverse_iterator<iter>(begin);

        auto pivot = next(rbegin);

        while (pivot != rend && *pivot > *prev(pivot)) {
            ++pivot;
        }

        bool is_smaller = true;
        if (pivot != rend) {
            auto change = find_if(rbegin, pivot, bind1st(greater<int>(), *pivot));
        } else {
            is_smaller = false;
        }

        reverse(rbegin, pivot);

        return is_smaller;

    }
};