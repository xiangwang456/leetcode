//
// Created by zhangqi on 2017/11/13.
// Time:  O(n)
// Space: O(k)

#include <queue>

using namespace std;
class ZigzagIterator{
public:
    ZigzagIterator(vector<int> &v1, vector<int> &v2){
        if(!v1.empty()){
            q_.emplace(v1.size(),v1.cbegin());
        }
        if(!v2.empty()){
            q_.emplace(v2.size(), v2.cbegin());
        }
    }

    int next(){
        int len = q_.front().first;
        const auto it = q_.front().second;
        q_.pop();
        if(len > 1){
            q_.emplace(len - 1,it + 1);
        }
        return  *it;
    }

    bool hasNext(){
        return !q_.empty();
    }
private:
    queue<pair<int, vector<int>::const_iterator>> q_;

};