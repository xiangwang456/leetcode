//
// Created by zhangqi on 2018/1/4.
//Time : O(nlogn)
//Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    int findDuplicate(vector<int>& nums) {
        int left = 1, right = nums.size();


        while (left <= right){
            int mid = left + (right - left) / 2;
            int count = 0;
            for(int num : nums){
                if(num <= mid){
                    count++;
                }
            }
            if(count > mid){

                right = mid - 1;
            } else{
                left = mid + 1;
            }
        }
        return left;
    }
};