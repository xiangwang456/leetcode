//
// Created by zhangqi on 2017/11/10.

// Time:  O(n)
// Space: O(k)

#include <stack>
#include <deque>
#include <vector>

using namespace std;
class Solution {
public:
    vector<int> maxSlidingWindow(vector<int>& nums, int k) {
        deque<int> dq;
        vector<int> ans;
        for(int i = 0; i < nums.size(); i++){
            //保证元素是在队列中是降序的
            while(!dq.empty() && nums[i] > nums[dq.back()]){
                dq.pop_back();
            }

            //将元素的索引位置放进队列中
            dq.push_back(i);

            //判断最大元素是否已经走出窗口，如果在窗口外则把最左边的元素pop
            if(i >= k  && !dq.empty() && dq.front() == i - k ){
                dq.pop_front();
            }
            //从k-1 开始把最大元素放在结果中
            if(i >= k - 1){
                ans.push_back(nums[dq.front()]);
            }

        }
        return ans;
    }
};