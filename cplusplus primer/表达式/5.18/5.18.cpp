// 5.18.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <vector>
#include <string>
using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	vector<string*> psvec;
	string str;
	cout<<"please input the string:"<<endl;
	while(cin>>str)
	{
		string *pstr=new string;
		*pstr=str;
		psvec.push_back(pstr);
	}

	//输出每个string的内容及其相应的长度
	vector<string*>::iterator iter;
	for(iter=psvec.begin();iter!=psvec.end();iter++)
	{
		str=**iter;
		cout<<"the length of string is :"<<str.size();
		cout<<"\t";
		cout<<"the content of string is :"<<str<<endl;
	}
	return 0;
}

