// test_foreach.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	vector<int> ivec;
	for (int i = 0; i != 10; i++)
		ivec.push_back(i);

	for (auto vec : ivec)
		cout << vec << "    ";
	return 0;
}

