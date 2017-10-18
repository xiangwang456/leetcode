//
// Created by zz on 2017/10/11.
// Time:  O(n) ~ O(n^2)
// Space: O(1)

#include <vector>
#include <functional>
#include <queue>
#include <algorithm>

using namespace std;

// stl
class Solution0 {
public:
    int findKthLargest(vector<int> &nums, int k) {
        nth_element(nums.begin(), next(nums.begin(), k - 1), nums.end(), greater<int>());
        return *next(nums.begin(), k - 1);

    }
};


//遍历数组时将数字加入优先队列（堆），一旦堆的大小大于k就将堆顶元素去除，确保堆的大小为k。遍历完后堆顶就是返回值。
class Solution1 {
public:
    int findKthLargest(vector<int> &nums, int k) {
        priority_queue<int> q(nums.begin(), nums.end());
        for (int i = 0; i < k - 1; i++) {
            q.pop();
        }
        return q.top();
    }
};

//
class Solution2 {
public:
    int findKthLargest(vector<int> &nums, int k) {
        priority_queue<int> q(nums.begin(), nums.end());
        for (int i = 0; i < k - 1; i++) {
            q.pop();
        }
        return q.top();
    }
};


class Solution3 {
public:
    int findKthLargest(vector<int> &nums, int k) {

        int L = 0, R = nums.size() - 1;
        while (L < R) {
            int left = L, right = R;
            int key = nums[left];
            while (left < right) {
                while (left < right && nums[right] < key) --right;
                nums[left] = nums[right];
                while (left < right && nums[left] >= key) ++left;
                nums[right] = nums[left];
            }
            nums[left] = key;
            if (left == k - 1) return nums[k - 1];
            else if (left > k - 1) R = left - 1;
            else L = left + 1;
        }
        return nums[k - 1];

    }
};