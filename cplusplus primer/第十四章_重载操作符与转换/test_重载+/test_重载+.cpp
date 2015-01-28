// test_重载+.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
class A
{
public:
	A(int a=0) :num(a){}
	int num;

};

A operator+ (const A &a1, const A &a2)
{
	A a;
	a.num = a1.num + a2.num;
	return a;
}


class B
{

};

int _tmain(int argc, _TCHAR* argv[])
{
	A a1(1), a2(2), a3;
	a3 = a1 + a2; 
	std::cout << a3.num;
	return 0;
}

