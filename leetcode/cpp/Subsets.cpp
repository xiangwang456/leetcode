//
// Created by zhangqi on 2018/2/7.
//Time : O(n * 2^n)
//Space : O(1)


/*一般回溯法的步骤
Pick a starting point.
while(Problem is not solved)
For each path from the starting point.
check if selected path is safe, if yes select it
        and make recursive call to rest of the problem
        before which undo the current move.
End For
If none of the move works out, return false, NO SOLUTON.

 */


#include <vector>

using namespace std;

class Solution {
public:
    vector<vector<int>> subsets(vector<int>& nums) {
        vector<vector<int>> res(1);
        for(int i = 0; i < nums.size(); i++){
            int size = res.size();
            for(int j = 0; j < size; j++){
                res.push_back(res[j]);
                res.back().push_back(nums[i]);
            }
        }
        return res;
    }
};