// 4.33.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <vector>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	vector<int> vec;
	int ival;
	cout<<"please input valuse:"<<endl;
	while(cin>>ival)
		vec.push_back(ival);

	int *a=new int [vec.size()];
	ival=0;
	for(vector<int>::iterator iter=vec.begin();iter!=vec.end();iter++,ival++)
		a[ival]=*iter;
	for(int i=0;i!=vec.size();i++)
		cout<<a[i];

	return 0;
}

