//============================================================================
// Name        : Text.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <iterator>
#include "Solution.cpp"
using namespace std;

int main() {
	Solution so ;
	vector<string> words;
	vector<string> res;
	words.push_back("abcd");
	words.push_back("abcd");
	words.push_back("abcd");
//	string temp = "a";
//	so.addSpace(temp,5);
//	cout << temp <<endl;
	res = so.fullJustify(words,10);
	for( vector<string>::iterator itea = res.begin() ; itea != res.end(); itea++)
		cout << *itea<<endl;


	return 0;
}
