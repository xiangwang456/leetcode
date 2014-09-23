// 10.1.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <utility>
#include <vector>
#include <string>
using namespace std;


int _tmain(int argc, _TCHAR* argv[])
{
	string str;
	int i;
	cout<<"Please input the name and number(enter Ctrl+Z to end):"<<endl;
	vector< pair<string,int> > pavect;
	while(cin>>str>>i)
	{
		pair<string,int> sipai=make_pair(str,i);  //三种创建方法：①本法 ②pair<string,int> sipai(str,i); ③pair<string,int> sipai；sipai.first=str; sipai.second=i;
		pavect.push_back(sipai);
	}
	cout<<"end"<<endl;
	for(vector< pair<string,int> >::iterator iter=pavect.begin();iter!=pavect.end();iter++)
	{
		cout<<"name:	"<<iter->first<<"	"<<"age:	"<<iter->second<<endl;
	}
	return 0;
}

