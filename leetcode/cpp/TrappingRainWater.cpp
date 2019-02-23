//
// Created by zz on 2019/2/23.
//

// Time:  O(n)
// Space: O(1)

#include <vector>
using namespace std;



class Solution {
public:
    /**
     * @param heights: a list of integers
     * @return: a integer
     */
    int trapRainWater(vector<int> &heights) {
        if (heights.empty()){
            return 0;
        }
        int leftHeight = heights[0];
        int rightHeight = heights[heights.size() - 1];
        int trap = 0;
        int i = 0, j = heights.size() - 1;
        while (i < j){
            if (leftHeight < rightHeight){
                i++;
                leftHeight = max(leftHeight, heights[i]);
                trap += max(0, leftHeight - heights[i]);

            } else{
                j--;
                rightHeight = max(rightHeight, heights[j]);
                trap += max(0 ,rightHeight - heights[j]);

            }
        }
        return trap;

    }


};