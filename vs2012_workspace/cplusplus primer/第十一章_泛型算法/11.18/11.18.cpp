// 11.18.cpp : 定义控制台应用程序的入口点。
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
	string infilename;
	string evenfilename="e:/even.txt";
	string oddfilename="e:/odd.txt";

	cout<<"please input filename:"<<endl;
	cin>>infilename;
	ifstream infile(infilename.c_str());
	ofstream evenfile(evenfilename.c_str());
	ofstream oddfile(oddfilename.c_str());

	istream_iterator<int> in_iter(infile),eof;
	ostream_iterator<int> out_odditer(oddfile,"\n");
	ostream_iterator<int> out_eveniter(evenfile,"\n");

	while(in_iter!=eof)
	{
		if(*in_iter%2==0)
			*out_eveniter++=*in_iter++;
		else
			*out_odditer++=*in_iter++;

	}
	oddfile.close();
	evenfile.close();
	infile.close();
	cout<<"odd number text stores in "<<oddfilename<<" successful "<<endl;
	cout<<"even number text stores in "<<evenfilename<<" successful "<<endl;
	return 0;
}

