//
// Created by zhangqi on 2017/12/19.

#include <vector>
#include <functional>
#include <algorithm>

using namespace std;


class Solution {
public:
    int hIndex(vector<int>& citations) {
        int n = citations.size();
        vector<int> count(n + 1, 0);
        for(const auto &citation : citations){
            if(citation >= n){
                count[n]++;
            } else{
                count[citation]++;
            }
        }

        int h = 0;
        for(int i = n; i >= 0; i--){
            h += count[i];
            if(h >= i){
                return  i;
            }
        }

        return  h;
    }
};



//Time : O(nlogn)
//Space: O(1)
class Solution1 {
public:
    int hIndex(vector<int>& citations) {
        sort(citations.begin(), citations.end(), greater<int>());

        int ans = 0;
        for(const auto &citation : citations){
            if(citation >= ans + 1){
                ans++;
            } else{
                break;
            }
        }
        return ans;
    }
};