// 6.18.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	string s1,s2;
	cout<<"please input two strings:"<<endl;
	cin>>s1>>s2;
	do
	{
		if(s1>s2)
			cout<<s1<<" > "<<s2<<endl;
		else
			cout<<s2<<" > "<<s1<<endl;
	}while(cin>>s1>>s2);
	return 0;
}

