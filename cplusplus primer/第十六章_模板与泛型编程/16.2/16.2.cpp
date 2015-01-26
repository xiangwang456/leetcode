// 16.2.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <fstream>
#include <sstream>

using namespace std;

template <typename T1,typename T2>
T1& print(T1& outs ,T2 val)
{
	outs<<val;
	return outs;

}
int _tmain(int argc, _TCHAR* argv[])
{
	//print(cout,"hello");
	ofstream f("text");
	print(f,"haha");
	f.close();
	stringstream ss;
	print(ss,"hehe");
	print(ss,"again");
	print(ss,"end le");
	cout<<ss.str()<<endl;
	ss.clear();
	cout<<"clear:"<<ss.str();
	return 0;
}

