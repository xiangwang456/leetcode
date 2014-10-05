#include <iostream>

#include "MaxPQ.cpp"
using namespace std;

int main()
{
	int a[] = { 0,1, 3, 2 };

	MaxPQ<int> q;
	for (int i = 0; i < 3; i++)
		{
			int num;
			cin >> num;
			q.Insert(num);
		}
	q.sort();
	

	int n;
	cin >> n;
}