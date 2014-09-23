// 13.14.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <iostream>
#include <vector>

using namespace std;
struct Exmpl
{
	Exmpl()
	{
		cout<<"Exmpl()"<<endl;
		cout<<"调用了默认构造函数"<<endl;

		
	}

	Exmpl(const Exmpl &)
	{
		cout<<"Exmpl(const Exmol&)"<<endl;
		cout<<"调用了复制构造函数"<<endl;
	}

	Exmpl & operator =(const Exmpl &rhe)
	{
		cout<<"operator =(const Exmpl &)"<<endl;
		cout<<"调用了复制操作符重载函数"<<endl;
		return *this;
	}

	~Exmpl()
	{
		cout<<"~Exmpl()"<<endl;
		cout<<"调用了析构函数"<<endl;
	}
};


void fun1(Exmpl obj)
{
	 
}

void fun2(Exmpl &obj)
{
	 
}

Exmpl fun3()
{
	Exmpl obj;

	return obj;
}
int _tmain(int argc, _TCHAR* argv[])
{
	cout<<"Exmpl eobj;"<<endl;
	Exmpl eobj;
	cout<<"\n\n\n\n";

	cout<<"fun1(eobj);"<<endl;
	fun1(eobj);
	cout<<"\n\n\n\n";

	cout<<"fun2(eobj);"<<endl;
	fun2(eobj);
	cout<<"\n\n\n\n";

	cout<<"eobj=fun3();"<<endl;
	eobj=fun3();
	cout<<"\n\n\n\n";

	cout<<"Exmpl *p=new Exmpl();"<<endl;
	Exmpl *p=new Exmpl();
	cout<<"\n\n\n\n";


	cout<<"vector<Exmpl> evec(3);"<<endl;
	vector<Exmpl> evec(3);
	cout<<"\n\n\n\n";

	cout<<"delete p;"<<endl;
	delete p;
	cout<<"\n\n\n\n";


	cout<<"return"<<endl;
	return 0;


}

