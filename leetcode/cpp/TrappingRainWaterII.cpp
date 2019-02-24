//
// Created by zz on 2019/2/24.
//

// Time:  O(n*m*(lgm+lgn)
// Space: O(n*m)

#include <vector>
#include <queue>


using namespace std;

class Solution {
public:
    /**
     * @param heights: a matrix of integers
     * @return: an integer
     */
    int trapRainWater(vector<vector<int>> &heights) {
        _m = heights.size();
        if (!_m){
            return 0;
        }
        _n = heights[0].size();
        if (!_n){
            return 0;
        }
        isVisited = vector<vector<bool>>(_m,vector<bool>(_n,false));

        for (int i = 0; i < _m; ++i) {
            _heap.emplace(Cell{i, 0, heights[i][0]}); // 第0列插入堆
            isVisited[i][0] = true;
            _heap.emplace(Cell{i,_n - 1,heights[i][_n - 1]}); //最后一列入堆
            isVisited[i][_n - 1] = true;

        }

        for (int j = 0; j < _n; ++j) {
            _heap.emplace(Cell{0, j, heights[0][j]});
            isVisited[0][j] = true;
            _heap.emplace(Cell{_m - 1, j, heights[_m - 1][j]});
            isVisited[_m - 1][j] = true;

        }

        int trap = 0;

        const vector<pair<int,int>> directions = {{-1,0}, {1,0}, {0, 1}, { 0, -1}};
        while (!_heap.empty()){
            Cell top = _heap.top();
            _heap.pop();
            for(const auto& d : directions){
                trap += fill(heights, top.x + d.first, top.y + d.second, top.height);
            }
        }
        return  trap;
    }

private:

    // height 当前的高度
    int fill(vector<vector<int>>& nums, int i ,int j, int height){
        if (i < 0  || i >= _m || j < 0 || j >= _n || isVisited[i][j]){  //出边界
            return 0;
        }

        _heap.emplace(Cell{i, j, max(height, nums[i][j])});
        isVisited[i][j] = true;
        return max(0, height - nums[i][j]);
    }

    struct Cell{
        int x,y,height;
    };

    struct Compare{
        bool operator()(const Cell& a, const Cell& b){
            return a.height > b.height;
        }
    };

    priority_queue<Cell,vector<Cell>,Compare> _heap; // 创建的小顶堆
    vector<vector<bool >> isVisited ; // 表示当前是否访问过

    int _m; //行
    int _n; //列

};