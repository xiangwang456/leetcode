// 12.13.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include<iostream>
#include <string>
#include <ostream>

using namespace std;

class Screen
{
public:
	typedef string::size_type index; 
	Screen(index h,index w,const string &s):heighet(h),width(w),cursor(0),contents(s)
	{
		contents.assign(heighet*width,' ');
		if(s.size())
		{
			contents.replace(0,s.size(),s);
		}
	}
	Screen& move(index r,index c)
	{
		if(r>heighet||c>width)
		{
			cerr<<"wrong cursor"<<endl;
			throw EXIT_FAILURE;
		}
		else 
		{
			int row=r*width;
			cursor=row+c;
		}
		return *this;
	}

	Screen& set(char c)
	{
		contents[cursor]=c;
		return *this;
	}

	Screen& display(ostream &out)
	{
		do_display(out);
		return *this;
	}

	const Screen& display(ostream &out) const
	{
		do_display(out);
		return *this;
	}
private:
	string contents;
	index cursor,heighet,width;
	void do_display(ostream &out) const
	{
		index i=0;
		while(i!=contents.size())
		{
			out<<contents[i];
			if(++i%width==0)
				cout<<"\n";
		}
		
	}
};

int _tmain(int argc, _TCHAR* argv[])
{
	Screen myScreen(20,20,"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	myScreen.move(4,0).set('#').display(cout);
	return 0;
}

