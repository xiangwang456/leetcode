// 8.6.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <string>
#include <iostream>
#include <fstream>
using namespace std;

istream & get(istream &in)
{
	string s;
	while(in>>s,!in.eof())
	{
		if(in.bad())
		{
			cerr<<"IO stream corrupt!"<<endl;
			break;
		}
		if(in.fail())
		{
			cerr<<"bad data,try again:"<<endl;
			cin.clear();
			cin.ignore();
			continue;
		}
		cout<<s<<endl;
		
	}
	cout<<s;
	return in;
}

int _tmain(int argc, _TCHAR* argv[])
{
	cout<<"please input filename:"<<endl;
	string fileName;
	cin>>fileName;
	ifstream inFile(fileName.c_str());
	if(!inFile)
	{
		cerr<<"wrong fileName!"<<endl;
		return -1;
	}
	get(inFile);
	cin>>fileName;
	return 0;
}

