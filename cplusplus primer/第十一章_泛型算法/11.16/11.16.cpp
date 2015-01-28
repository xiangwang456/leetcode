// 11.16.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <fstream>
#include <algorithm>
#include <string>
#include <iostream>
#include <iterator>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	string filename;
	cout<<"please input the filename:"<<endl;
	cin>>filename;
	ifstream infile(filename.c_str());
	if(!infile)
	{
		cerr<<"error: unable to open input file:"<<filename<<endl;
		return -1;
	}
	ostream_iterator<string> out_iter(cout,"_");
	istream_iterator<string> in_iter(infile),eof;
	copy(in_iter,eof,out_iter);
	infile.close();
	return 0;
}

