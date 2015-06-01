//============================================================================
// Name        : Simplify.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <vector>
#include <string>
#include <sstream>
using namespace std;

string simplifyPath(string path) ;
int main() {
	cout << simplifyPath("/a/./b/../../c/");
	return 0;
}

string simplifyPath(string path) {
        vector<string> list;
        string res = "";
        string cur = "";
        stringstream ss( path );
        while(getline( ss , cur , '/')){
        	if( cur.size() == 0 || cur == ".")
        		continue;
        	if( cur == "..")
        	{
        		if ( !list.empty())
        		{
        			list.pop_back();
        		}
        	}
        	else
        	{
        		list.push_back(cur);
        	}
        }
        for( size_t i = 0 ; i < list.size() ; i++ )
        {
        	res += "/";
        	res += list[i] ;
        }
        return res.size() == 0 ? "/" : res;
    }
