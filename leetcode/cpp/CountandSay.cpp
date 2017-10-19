//
// Created by zhangqi on 2017/10/19.
//Time : O(n )
//Space : O(1)

#include <vector>
#include <string>
#include <limits>
#include <algorithm>

using namespace std;

class Solution {
public:
    string countAndSay(int n) {
        string seq = "1";
        for(int i = 0; i < n - 1; i++){
            seq = getNext(seq);
        }
        return  seq;
    }

private:
    string getNext(string &seq){
        string next_seq;
        for(auto i = seq.cbegin(); i != seq.cend();){
            auto j = find_if(i, seq.cend(), bind1st(not_equal_to<int>(),*i));
            next_seq.append(to_string(distance(i,j)));
            next_seq.push_back(*i);
            i = j;
        }
        return  next_seq;
    }
};