// 8.9.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <vector>
#include <string>
#include <fstream>

using namespace std;


int _tmain(int argc, _TCHAR* argv[])
{
	string text;;
	vector<string> texts;
	string filename;
	cout<<"请输入文件名:"<<endl;
	cin>>filename;
	ifstream input(filename.c_str());
	if(!input)
	{
		cout<<"打开文件失败"<<endl;
		return -1;
	}

	while(getline(input,text))
		texts.push_back(text);
	input.close();
	if(input.eof())
		cout<<"文件结束"<<endl;
	if(input.bad())
		cout<<"系统级故障"<<endl;
	if(input.fail())
		cout<<"读取失败"<<endl;


	vector<string>::iterator it=texts.begin();
	while(it!=texts.end())
		cout<<*it++<<endl;
	return 0;
}

