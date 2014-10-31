#include <iostream>
#include <list>

using namespace std;

typedef list<int>::iterator iter;
int lastRamainint(int n, int k)
{
	list<int> quanquan;
	for (int i = 0; i < n; i++)
		quanquan.push_back(i + 1);
	iter quaniter = quanquan.begin();
	while (quanquan.size() != 1)
	{
		for (int i = 1; i < k; i++)
		{
			quaniter++;
			if (quaniter == quanquan.end())
				quaniter = quanquan.begin();
		}
		iter curr = quaniter;
		quaniter++;
		if (quaniter == quanquan.end())
			quaniter = quanquan.begin();
		quanquan.erase(curr);
	}
	return *quaniter;
}

int main()
{
	int n;
	while (cin >> n&&n > 0)
	{
		int k;
		cin >> k;
		cout << lastRamainint(n, k) << endl;
	}
	return 0;
}