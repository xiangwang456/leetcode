// 11.17.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <fstream>
#include <algorithm>
#include <string>
#include <iostream>
#include <iterator>
#include <vector>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	istream_iterator<int> in_iter(cin),eof;
	vector<int> ivec(in_iter,eof);
	for(vector<int>::iterator iter=ivec.begin();iter!=ivec.end();iter++)
		cout<<*iter<<"\t";
	cout<<endl;
	return 0;
}

