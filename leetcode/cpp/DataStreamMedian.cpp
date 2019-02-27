//
// Created by zz on 2019/2/27.
//

// Time:  O(nlogn)
// Space: O(n)

#include <vector>
#include <queue>

using namespace std;


class Solution {
public:
    /**
     * @param nums: A list of integers
     * @return: the median of numbers
     */
    vector<int> medianII(vector<int> &nums) {
        // 小顶堆存放了较大的那部分数
        priority_queue<int, vector<int>, greater<int >> minHeap;

        // 大顶堆存放了较小的那部分数
        priority_queue<int, vector<int>, less<int>> maxHeap;

        vector<int> ans;
        for(const auto& num : nums){
            if(maxHeap.empty() || num > maxHeap.top()){
                minHeap.emplace(num);
                if (minHeap.size() > maxHeap.size() + 1){
                    maxHeap.emplace(minHeap.top());
                    minHeap.pop();
                }
            } else{
                maxHeap.emplace(num);
                if (maxHeap.size() > minHeap.size()){
                    minHeap.emplace(maxHeap.top());
                    maxHeap.pop();
                }
            }
            int median = minHeap.size() == maxHeap.size() ? maxHeap.top() : minHeap.top();
            ans.emplace_back(median);
        }
        return  ans;
    }
};