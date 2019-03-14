//
// Created by zhangqi on 2019/2/28.
//Time : O(n )
//Space : O(n)


#include <stack>
#include <vector>

using  namespace std;

class Solution {
public:
    /**
     * @param height: A list of integer
     * @return: The area of largest rectangle in the histogram
     */
    int largestRectangleArea(vector<int> &height) {

        int ans  = 0;
        stack<int> increaHegihtIndex;
        for(int i = 0; i <= height.size(); ){
            if(increaHegihtIndex.empty() ||   (i < height.size() && height[i] > height[increaHegihtIndex.top()])){
                increaHegihtIndex.push(i);
                i++;
            } else{
                int h = height[increaHegihtIndex.top()];
                increaHegihtIndex.pop();
                int left = increaHegihtIndex.empty() ?  -1 : increaHegihtIndex.top();
                ans = max( ans, h * (i - 1 - left )) ;
            }
        }
        return  ans;

    }
};