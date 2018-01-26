//
// Created by zhangqi on 2018/1/26.
// Time:  O(logn)
// Space: O(1)

class Solution {
public:
    int mySqrt(int x) {
        if( x < 2){
            return  x;
        }
        int left = 1;
        int right = x / 2;
        while (left <= right){
            int mid = left + (right - left) / 2;
            if(mid > x / mid){
                right = mid - 1;
            } else{
                left = mid + 1;
            }
        }
        return left - 1;
    }
};