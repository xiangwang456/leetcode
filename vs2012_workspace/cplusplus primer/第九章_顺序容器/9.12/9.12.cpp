// 9.12.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <vector>
#include <iterator>

using namespace std;

bool find(vector<int>::iterator it1,vector<int>::iterator it2,int val)
{
	while(it1!=it2)
	{
		if(*it1==val)
			break;
		else
			it1++;
	}
	if(it1==it2)
		return 0;
	else
		return 1;
}

int _tmain(int argc, _TCHAR* argv[])
{
	return 0;
}

