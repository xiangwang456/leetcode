//============================================================================
// Name        : ZigZag.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <string>
using namespace std;

string convert(string s, int numRows) {
        int n = s.size();
        if( numRows <= 1 || n < numRows )
        	return s;
        int k = 0 ;
        string result( s );
        for( int i = 0; i < numRows ; i++ )
        {
        	int j = i;
        	int flag = 0;
        	while( j < n){
        		result[ k++ ] = s[j];
        		if( i == 0 || i == numRows - 1)
        			j += 2 * numRows - 2;
        		else if( flag == 0){
        			flag = 1;
        			j += 2 * numRows - 2 - 2 * i;
        		}else{
        			flag = 0;
        			j += 2 * i;
        		}
        	}
        }
        return result;
    }

int main() {
	cout<< convert("PAYPALISHIRING", 3);
	return 0;
}

