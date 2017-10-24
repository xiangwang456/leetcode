//
// Created by zhangqi on 2017/10/24.
// Time:  O(1)
// Space: O(1)
#include <string>
#include <vector>

// 1、从当前时间加1开始一直加一天的分钟数 24 * 60 ，看哪一天的时间里的字符全部出现在了当前时间中 2、建立一个600 ，60,10,1 的数组表示 AB:CD 中的 A、B、C、D所代表的分钟数 3、运用stl里的stoi

using namespace std;

class Solution {
public:
    string nextClosestTime(string time) {
        static const vector<int> mins = {600, 60, 10, 1};
        auto npos = time.find(':');
        auto curr = stoi(time.substr(0,npos)) * 60 + stoi(time.substr(npos + 1)) ;
        string ans = "0000";
        for(int i = 1,d = 0; i <= 24 * 60 && d < 4; i++){
            int m = (curr + i) % (24 * 60) ;
            for(d = 0; d < 4; d++){
                ans[d] = '0' + m / mins[d];
                m %= mins[d];
                if(time.find(ans[d]) == string::npos){
                    break;
                }
            }
        }
        return ans.substr(0,2) + ":" + ans.substr(2,2);


    }
};
