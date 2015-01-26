// 10.12.cpp : 定义控制台应用程序的入口点。
//


#include "stdafx.h"
#include <iostream>
#include <string>
#include <map>
#include <utility>

using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	string word;
	map<string,int> simap;
	while(cin>>word)
	{
		pair< map<string,int>::iterator,bool> ret=simap.insert(make_pair(word,1));
		if(!ret.second)
			ret.first->second++;
	}
	for(map<string,int>::iterator iter=simap.begin();iter!=simap.end();iter++)
		cout<<"word:	"<<iter->first<<"	"<<"times:	"<<iter->second<<endl;
	return 0;
}

