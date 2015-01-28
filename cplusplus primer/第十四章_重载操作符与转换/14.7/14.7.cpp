// 14.7.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <string>
#include <utility>
#include <vector>

using namespace std;

class CheckOutRecords
{
public:
	CheckOutRecords(double id = 0, string title = "null") :book_id(id), title(title)
	{}
	~CheckOutRecords();
	
private:
	friend ostream& operator<<(ostream &os, CheckOutRecords cor);
	double book_id;
	string title;
	pair <string, string> borrower;
	vector < pair<string, string>* > wait_list;
};

ostream& operator<<(ostream &os, CheckOutRecords cor)
{
	os << "book id:\t" << cor.book_id << "\t" << "title:\t" << cor.title;
	os << "Borrower:"<<cor.borrower.first << "\t"<<cor.borrower.second<<"\t";
	//for (auto iter = cor.wait_list.begin(); iter != cor.wait_list.end(); iter++)
	os << "wait list:\t" << endl;
	for (auto iter:cor.wait_list)    //c++11
		os << iter->first << "\t" << iter->second;
	return os;
}

CheckOutRecords::~CheckOutRecords()
{
}

int _tmain(int argc, _TCHAR* argv[])
{
	CheckOutRecords cor;
	cout << cor;
	return 0;
}

