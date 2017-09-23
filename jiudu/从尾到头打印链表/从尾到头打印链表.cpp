// 从尾到头打印链表.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <stdio.h>
#include <stack>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	stack<int> ista;
	int num;
	while (scanf("%d", &num) != EOF&&num != -1)
		ista.push(num);
	
	while (!ista.empty())
	{
		num = ista.top();
		ista.pop();
		printf("%d\n", num);
	}
		
	return 0;
}

