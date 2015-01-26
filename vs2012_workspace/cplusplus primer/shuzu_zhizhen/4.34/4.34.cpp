// 4.34.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <string>
#include <vector>
using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	cout<<"input a array  string:"<<endl;
	//输入字符数组
	vector<string> svec;
	string str;
	while(cin>>str)
		svec.push_back(str);

	//创建字符数组
	char **strs=new char*[svec.size()];
	int num=0;
	for(vector<string>::iterator iter=svec.begin();iter!=svec.end();iter++,num++)
	{
		string str=*iter;
		int len=str.size();
		char *c_str=new char[len+1];
		strcpy(c_str,str.c_str());
		strs[num]=c_str;

		for(int i=0;strs[num][i]!='\0';i++)
			cout<<strs[num][i];
		cout<<endl;

	}

	for(int i=0;i!=svec.size();i++)
		delete [] strs[i];
	delete [] strs;
	return 0;
}

