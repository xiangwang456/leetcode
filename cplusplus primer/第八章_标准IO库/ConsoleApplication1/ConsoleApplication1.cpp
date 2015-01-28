// ConsoleApplication1.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>

using namespace std;

istream &get(istream &in)
{
	
	int ival;
	while(in>>ival,!in.eof())
	{
		if(in.bad())
			throw runtime_error("IO Stream corrupt");
		if(in.fail())
		{
			cout<<"bad data,try again:"<<endl;
			cin.clear(istream::badbit);
			cin.ignore();
			continue;
		}
		cout<<"the num you input is:"<<ival<<endl;
	}
	return in;
}


int _tmain(int argc, _TCHAR* argv[])
{
	double val;
	get(cin);
	cin>>val;
	cout<<val<<endl;
	return 0;
}

