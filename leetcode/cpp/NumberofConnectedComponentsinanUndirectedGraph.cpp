//
// Created by zhangqi on 2017/11/27.

//Time : O(n)
//Space : O(n)


#include <vector>
#include <string>


using namespace std;

class Solution {
public:
    int countComponents(int n, vector<pair<int, int>>& edges) {
        UnionFind uf(n);
        for(const auto& e: edges ){
            uf.unionSet(e.first, e.second);
        }
        return uf.length();
    }

private:

    class UnionFind{
    public:
        UnionFind(const int n) : count_(0), set_(n, 0){

        }

        int findSet(const int x){
            if(set_[x] != x){
               set_[x] = findSet(x);
            }
            return set_[x];
        }

        void unionSet(const int x, const int y){
            int xRoot = findSet(x), yRoot = findSet(y);
            if(xRoot != yRoot){
                set_[min(xRoot, yRoot)] = max(xRoot, yRoot);
                count_--;
            }
        }

        int length(){
            return count_;
        }


    private:
        int count_;
        vector<int> set_;
    };

};