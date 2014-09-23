// 6.12.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <string>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	string preword,currword;
	string reword;
	int curr=0,max=0;
	cout<<"please string :"<<endl;
	while(cin>>currword)
	{
		if(currword==preword)
		{
			curr++;
		}
		else
		{
			if(curr>max)
			{
				max=curr;
				reword=preword;
				curr=0;
			}
		}
		preword=currword;
	}

	if(max>0)
		cout<<"the number of "<<reword<<" repeats most times :"<<max<<endl;
	else
		cout<<"no repeat string"<<endl;
	return 0;
}

