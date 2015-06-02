//============================================================================
// Name        : String.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <string>
#include <limits>
using namespace std;


int myAtoi(string str) ;
int main() {
	int i = myAtoi("+1");
	cout << i << endl; // prints
	return 0;
}

int myAtoi(string str) {
    	long long result = 0;
    	size_t i = 0;
    	bool negative = false;

        // 去掉空格
        while( str[i] == ' ' )
        	i++;
        //判断符号位
        if ( str[i] == '-'){
        	negative = true;
        	i++;
        }
        else if ( str[i] == '+' ){
        	negative = false;
        	i++;
        }
        //跳过0
        while( str[i] == '0' )
        	i++;
        while(i < str.size() && str[i] <= '9' && str[i] >= '0' ){
        	result = result * 10 + str[i] - '0';
        	i++;
        	if ( !negative && result > numeric_limits<int>::max())
        		return numeric_limits<int>::max();
        	else if (negative && -result < numeric_limits<int>::min())
        		return numeric_limits<int>::min();
        }
        return negative ? -result : result;
}

