// 8.7.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	vector<string> files;
	vector<string>::iterator it=files.begin();
	ifstream input;
	string s;
	while(it!=files.end())
	{
		input.open(it->c_str());
		if(!input)
		{
			cerr<<"wrong filename:"<<*it<<endl;
			input.clear();
			input.close();
			it++;
			continue;
		}
		while(input>>s)
		{
			;//process(s);
		}
		input.clear();
		input.close();
		++it;
	}
	return 0;
}

