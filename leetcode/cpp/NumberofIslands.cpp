//
// Created by zhangqi on 2018/2/2.
//Time : O(m * n)
//Space : O(m * n)

#include <vector>

using  namespace std;

class Solution {
public:
    int numIslands(vector<vector<char>>& grid) {
        if(grid.empty()){
            return  0;
        }

        int result = 0;
        for(int i = 0; i < grid.size(); i++){
            for(int j = 0; j < grid[0].size(); j++){
                if(grid[i][j] == '1'){
                    numIslandsHelper(grid,i,j);
                    result++;
                }
            }
        }
        return  result;
    }

private:
    void numIslandsHelper(vector<vector<char>>& grid, int i, int j){
        if (i < 0 || i >= grid.size() || j < 0 || j >= grid[0].size()) {
            return;
        }
        if (grid[i][j] == '1') {
            grid[i][j] = '0';
            numIslandsHelper(grid, i - 1, j);
            numIslandsHelper(grid, i + 1, j);
            numIslandsHelper(grid, i, j - 1);
            numIslandsHelper(grid, i, j + 1);
        }

    }
};

