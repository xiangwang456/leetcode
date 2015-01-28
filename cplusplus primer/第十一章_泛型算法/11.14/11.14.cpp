// 11.14.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <string>
#include <algorithm>
#include <vector>
#include <list>

using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{
	vector<int> ivec;
	for(vector<int>::size_type i=0;i!=10;i++)
		ivec.push_back(i);
	list<int> ls1;
	list<int> ls2;
	list<int> ls3;

	replace_copy(ivec.begin(),ivec.end(),inserter(ls1,ls1.begin()),0,-1);
	replace_copy(ivec.begin(),ivec.end(),front_inserter(ls2),0,-1);
	replace_copy(ivec.begin(),ivec.end(),back_inserter(ls3),0,-1);
	cout<<"insert from begin:"<<endl;
	for(list<int>::iterator iter=ls1.begin();iter!=ls1.end();iter++)
		cout<<*iter<<"	";
	cout<<"front_insert:"<<endl;
	for(list<int>::iterator iter=ls2.begin();iter!=ls2.end();iter++)
		cout<<*iter<<"	";

	cout<<"back_insert"<<endl;
	for(list<int>::iterator iter=ls3.begin();iter!=ls3.end();iter++)
		cout<<*iter<<"	";
	return 0;
}

