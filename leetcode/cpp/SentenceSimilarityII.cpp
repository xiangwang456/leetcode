//
// Created by zhangqi on 2017/11/28.
//Time : O(n)
//Space : O(n)

#include <string>
#include <unordered_map>
#include <vector>
#include <numeric>

using namespace std;


class Solution {
public:
    bool areSentencesSimilarTwo(vector<string>& words1, vector<string>& words2, vector<pair<string, string>> pairs) {
        if(words1.size() != words2.size()){
            return false;
        }
        unordered_map<string, int> loopup;
        UnionFind uf(pairs.size() * 2);
        for(const auto pair : pairs){
            if(!loopup.count(pair.first)){
                //字符串在loopup里的位置作为并查集查询的条件
                loopup.emplace(pair.first,loopup.size());
            }
            if(!loopup.count(pair.second)){
                loopup.emplace(pair.second,loopup.size());
            }
            uf.unionSet(loopup[pair.first], loopup[pair.second]);
        }

        for(int i = 0; i < words1.size(); i++){
         if(words1[i] != words2[i] && (!loopup.count(words1[i]) || !loopup.count(words2[i]) || uf.findSet(loopup[words1[i]]) != uf.findSet(loopup[words2[i]]))){
                return false;
            }
        }
        return true;


    }

private:
    class UnionFind{
    public:
        UnionFind(const int n) : set_(n) {
            iota(set_.begin(), set_.end(), 0);
        }

        int findSet(int x){
            if(x != set_[x]){
                set_[x] = findSet(set_[x]);
            }
            return set_[x];
        }

        bool unionSet(const int x, const int y){
            int xRoot = findSet(x), yRoot = findSet(y);
            if(xRoot == yRoot){
                return false;
            }
            set_[min(xRoot, yRoot)] = max(xRoot, yRoot);
            return true;
        }

    private:
        vector<int> set_;
    };

};