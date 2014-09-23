// 10.26.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <map>
#include<string>
#include <iostream>
#include <vector>


using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
	multimap<string,string> authors;
	string author,book,searchItem;
	cout<<"Please input the author(Ctrl+z to end):"<<endl;
	while(cin>>author)
	{
		cout<<"Please input the "<<author<<"'s book(Ctrl+z to end):"<<endl;
		cin>>book;
		authors.insert(make_pair(author,book));
		cout<<"does "<<author<<" has any books else(y/n)?"<<endl;
		char ch;
		cin.clear();
		cin>>ch;
		while(ch=='y')
		{
			cout<<"Please input the "<<author<<"'s book(Ctrl+z to end):"<<endl;
			cin>>book;
			authors.insert(make_pair(author,book));
			cout<<"does "<<author<<" has any books else(y/n)?"<<endl;
			cin.clear();
			cin>>ch;
		}
		cin.clear();
		cout<<"Please input the author(Ctrl+z to end):"<<endl;
	}
	cin.clear();
	cout<<"who is the author you hate?"<<endl;
	cin>>author;
	pair< multimap<string,string>::iterator ,multimap<string,string>::iterator > p=authors.equal_range(author);
	if(p.first==p.second)
		cout<<"can't find"<<endl; 
	else authors.erase(p.first,p.second);

	cout<<"the books in the library are:"<<endl; 
	for(multimap<string,string>::iterator iter=authors.begin();iter!=authors.end();iter++)
		cout<<iter->first<<"'s book(s):	"<<iter->second<<endl;
	return 0;
}

