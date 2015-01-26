// 11.10.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <iterator>
#include <vector>
#include <algorithm>
#include <string>

using namespace std;

bool isShorter(const string &s1, const string &s2)
{
	return s1.size()<s2.size();
}

bool GT6(const string &s)
{
	return s.size()>=6;
}



int _tmain(int argc, _TCHAR* argv[])
{
	vector<string> words;
	string word;
	cout<<"please input words:"<<endl;
	while(cin>>word)
		words.push_back(word);
	sort(words.begin(),words.end());
	vector<string>::iterator unique_iter=unique(words.begin(),words.end());
	words.erase(unique_iter,words.end());

	stable_sort(words.begin(),words.end(),isShorter);
	
	vector<string>::iterator iter=find_if(words.begin(),words.end(),GT6);

	cout<<"6  words are:	";
	int nums=0;
	for(;iter!=words.end();iter++)	
	{
			cout<<*iter<<"	";
			++nums;
	}
	cout<<endl;
	cout<<"6 characters or longger:"<<nums<<endl;
	return 0;
}