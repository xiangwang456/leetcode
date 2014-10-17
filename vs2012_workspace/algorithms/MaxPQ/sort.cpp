#include <iostream>

#include "MaxPQ.cpp"
using namespace std;

int main()
{
	int a[] = { 0, 1, 3, 2, 5, 6 };
	int n = sizeof(a) / sizeof(int);
	MaxPQ<int> q;
	for (int i = 0; i < n; i++)
		{
			q.Insert(a[i]);
		}
	q.sort();
	q.pritfPQ();

	int end;
	cin >> end;
}