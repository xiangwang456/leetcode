/*
 * Solution.cpp
 *
 *  Created on: 2015年6月1日
 *      Author: messi
 */
#include <string>
#include <iostream>
using namespace std;


class Solution {
public:
    int numDecodings(string s) {
        if( s.length() < 1 || s[ 0 ] == '0' )
        	return 0;
    	int prev = 0;
        int cur = 1;
        for(size_t i = 1 ; i <= s.size(); i++ )
        {
        	//类比青蛙跳台阶，一次可以跳1阶，也可以跳2阶，跳到n阶有多少方法，这里加了些条件。
        	//前面一个如果时0 ，则1阶的不可以跳，因为0与0前面只有一种可能
        	if( s[ i - 1 ] == '0' )
        		cur = 0;

        	//只有i >= 2 和 10< x < 26 可以跳2阶
        	if( i < 2 || !( s[ i - 2 ] == '1' || ( s[i - 2] == '2' && s[i - 1] <= '6' )))
        		prev = 0;
        	int temp = cur;
        	cur += prev;
        	prev = temp;
        }
        return cur;
    }
};


