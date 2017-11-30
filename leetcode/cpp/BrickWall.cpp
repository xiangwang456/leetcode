//
// Created by zhangqi on 2017/11/30.
// Time:  O(n), n is the total number of the bricks
// Space: O(m), m is the total number different widths

#include <vector>
#include <c++/unordered_map>

using namespace std;

class Solution {
public:
    int leastBricks(vector<vector<int>>& wall) {
        //记录右边界以及右边界出现的次数
        unordered_map<int, int> widthsAndCount;
        auto ans = wall.size();
        for(const auto &row : wall){
            int width = 0;
            for(int i = 0; i < row.size() - 1; i++){
                width += row[i];
                widthsAndCount[width]++;
                //找右边界出现最多的边界， 总长度减去出现的次数就是最小的长度
                ans = min(ans, wall.size() - widthsAndCount[width]);
            }
        }
        return ans;
    }
};