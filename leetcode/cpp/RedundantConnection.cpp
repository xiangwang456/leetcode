//
// Created by zhangqi on 2017/11/21.
//Time  : O(n)
//Space : O(n)
//并查集

#include <vector>
#include <numeric>


using namespace std;

class Solution {
public:
    vector<int> findRedundantConnection(vector<vector<int>>& edges) {
        UnionFind unionFind(edges.size() + 1);
        for(const auto edge : edges){
            if(!unionFind.unionSet(edge[0], edge[1])){
                return edge;
            }
        }
        return {};
    }

private:
    class UnionFind{
    public:
        //记得把初始化
        UnionFind(const int n) : count_(n), set_(n) {
            iota(set_.begin(), set_.end(), 0);
        }

        int find(int x){
            if(x != set_[x]){
                set_[x] = find(set_[x]);
            }
            return set_[x];
        }

        bool unionSet(int x, int y){
            int xRooot = find(x);
            int yRoot = find(y);
            if(xRooot == yRoot){
                return false;
            }
            set_[min(xRooot, yRoot)] = max(xRooot, yRoot);
            count_--;
            return true;
        }

        int length(){
            return count_;
        }

    private:
        int count_;
        vector<int> set_;

    };
};