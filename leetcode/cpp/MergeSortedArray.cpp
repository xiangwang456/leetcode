//
// Created by zhangqi on 2017/12/11.
//Time : O(n)
//Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    void merge(vector<int>& nums1, int m, vector<int>& nums2, int n) {
        int i = m + n;
        while(m > 0 && n > 0){
            if(nums1[m - 1] > nums2[n - 1]){
                nums1[i - 1] = nums1[m - 1];
                m--;
            } else{
                nums1[i - 1] = nums2[n - 1];
                n--;
            }
            i--;
        }
        while(n > 0){
            nums1[i - 1] = nums2[n - 1];
            i--;
            n--;
        }

    }
};