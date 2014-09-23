// 10.23.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <map>
#include <string>
#include <vector>
#include <fstream>
#include <set>
using namespace std;
void restricted_wc(ifstream &remove_file, map<string,int> &word_count)
{
	set<string> excluded;
	string remove_word;
	while(remove_file>>remove_word)
		excluded.insert(remove_word);
	string word;
	while(cin>>word)
		if(!excluded.count(word))
			word_count[word]++;
}

int _tmain(int argc, _TCHAR* argv[])
{
	return 0;
}

