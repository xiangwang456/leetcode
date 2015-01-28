// 4.36.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	int nums[][4]={{1,2,3,4},{1,3,5,7},{2,4,6,8},{5,6,7,8}};
	int (*p)[4];
	for(p=nums;p!=nums+4;p++)
	{
		for(int *q=*p;q!=*p+4;q++)
		{
				cout<<*q;
				cout<<"\t";
		}
		cout<<endl;
	}
	return 0;
}

