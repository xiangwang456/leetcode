// 11.15.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <vector>
#include <algorithm>
#include <iterator>

using namespace std;


int _tmain(int argc, _TCHAR* argv[])
{
	vector<int> ivec;
	vector<int> ivec2;
	for(vector<int>::size_type i=0;i!=10;i++)
	{
			ivec.push_back(i);
			ivec.push_back(i);
	}

	unique_copy(ivec.begin(),ivec.end(),back_inserter(ivec2));
	cout<<"ivec:"<<endl;
	for(vector<int>::iterator iter=ivec.begin();iter!=ivec.end();iter++)
		cout<<*iter<<"	";
	cout<<endl;
	cout<<"ivec2:"<<endl;
	for(vector<int>::iterator iter=ivec2.begin();iter!=ivec2.end();iter++)
		cout<<*iter<<"	";
	return 0;
}

