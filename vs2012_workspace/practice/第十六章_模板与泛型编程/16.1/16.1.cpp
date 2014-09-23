// 16.1.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <string>
using namespace std;

template <typename T>

T absVal(T val)
{
	return val>0?val:-val;
}
int _tmain(int argc, _TCHAR* argv[])
{
	double dval=-3.4;
	int ival=3;
	float fval=-12.8f;

	cout<<absVal(dval)<<"	"<<absVal(ival)<<"	"<<absVal(fval)<<endl;
	return 0;
}

