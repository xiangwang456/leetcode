// 11.21.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iterator>
#include <list>
#include <algorithm>
#include <iostream>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	list<int> ilist;
	for(list<int>::size_type i=0;i!=10;i++)
	{
		ilist.push_back(i);
		ilist.push_back(i);
		
	}
	ilist.push_back(0);
	list<int>::reverse_iterator iter=find(ilist.rbegin(),ilist.rend(),0);
	if((iter!=ilist.rend())&&(iter!=ilist.rbegin()))
		cout<<"the element after the last 0 : "<<*--iter;
	else
		cout<<"no element after the last 0."<<endl;
	return 0;
}

