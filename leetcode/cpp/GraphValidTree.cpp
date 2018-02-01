//
// Created by zhangqi on 2018/2/1.
//Time : O(n)
//Space : O(n)

#include <vector>
#include <c++/numeric>

using namespace std;

class Solution {
    bool validTree(int n, vector<vector<int>> edges) {
        UnionFind unionFind(n);
        for(int i = 0; i < edges.size(); i++){
            if(!unionFind.unionSet(edges[i][0], edges[i][1])){
                return false;
            }
        }
        return unionFind.getCount() != 1;
    }

private:
    class UnionFind{
    public:
        UnionFind(int n) : set_(n) ,count(n){
            for(int i = 0; i < n; i++){
                set_[i] = i;
            }
        }

        bool unionSet(int x, int y){
            int xRoot = findSet(x);
            int yRoot = findSet(y);
            if(xRoot == yRoot){
                return false;
            }
            set_[min(xRoot, yRoot)] = max(xRoot, yRoot);
            count--;
            return true;
        }

        int getCount(){
            return count;
        }

        int findSet(int x){
           if(x != set_[x]){
               set_[x] = findSet(set_[x]);
           }
            return  set_[x];
        }

    private:
        vector<int> set_;
        int count;
    };
};

