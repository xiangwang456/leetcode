// 9.18.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <deque>
#include <list>
#include <vector>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	list<int> lst;
	for(int i=0;i!=10;i++)
		lst.push_back(i);
	deque<int> odd,even;
	for(list<int>::iterator lvec=lst.begin();lvec!=lst.end();lvec++)
	{
		if(*lvec%2==0)
			even.push_back(*lvec);
		else
			odd.push_back(*lvec);

	}

	cout<<"偶数有："<<endl;
	for(deque<int>::iterator dvec1=even.begin();dvec1!=even.end();dvec1++)
		cout<<*dvec1<<"	";
	cout<<endl;
	cout<<"奇数有："<<endl;
	for(deque<int>::iterator dvec2=odd.begin();dvec2!=odd.end();dvec2++)
		cout<<*dvec2<<"	";
	return 0;
}

