//
// Created by zhangqi on 2017/10/19.

//Time : O(n^2)
//Space : O(1)

#include <string>
#include <vector>

using namespace std;


// 暴力破解 ，从第一个元素开始，以此为中心向两边扩散 ，回文序列有奇数和偶数两种情况分开讨论
class Solution1 {
public:
    string longestPalindrome(string s) {
        int left = 0, right = 0, startIndex = 0, len = 0;
        for(int i = 0; i < s.size() - 1; i++){
            if(s[i] == s[i + 1] ){
                searchPlindrome(s, i, i + 1, startIndex, len);
            }
            searchPlindrome(s, i, i, startIndex, len);
        }
        if(len == 0){
            len = s.size();
        }
        return s.substr(startIndex, len);
    }

private:

    void searchPlindrome(string s,int left, int right,int &startIndex, int &len){
        int step = 1;
        while((left - step  >= 0) && (right + step < s.size())){
            if(s[left - step] == s[right + step]){
                step++;
            } else{
                break;
            }
        }
        int wide = right - left + 2 * step - 1;
        if(wide > len){
            len = wide;
            startIndex = left - step + 1;
        }

    }
};

// 动态规划
class Solution2 {
public:
    string longestPalindrome(string s) {
       int dp[s.size()][s.size()] = {0};
        int left = 0, len = 0, right = 0;
        for(int i = 0; i < s.size(); i++){
            dp[i][i] = 1;
            for(int j = 0; j < i; j++){
                dp[j][i] = (s[i] == s[j]) && (i - j < 2 || dp[j + 1][i - 1]);
                if( dp[j][i] && len < i - j + 1 ){
                    len = i - j + 1;
                    left = j;
                    right = i;
                }
            }

        }
        return  s.substr(left, right - left + 1);
    }
};