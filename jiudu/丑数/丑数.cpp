#include <iostream>
using namespace std;

int Min(int a, int b, int c)
{
	int less = a < b ? a : b;
	return less < c ? less : c;	
}

int GetUglyNumber(int index)
{
	int *uglys = new int[index];
	uglys[0] = 1;
	int *p2 = uglys;
	int *p5 = uglys;
	int *p3 = uglys;
	int nextindex = 1;
	while (nextindex < index)
	{
		int min = Min(*p2 * 2, *p3 * 3, *p5 * 5);
		uglys[nextindex] = min;
		while (*p2 * 2 <= min)
			p2++;
		while (*p5 * 5 <= min)
			p5++;
		while (*p3 * 3 <= min)
			p3++;
		nextindex++;
	}
	int result = uglys[index - 1];
	delete[] uglys;
	return result;
}

int main()
{
	int index;
	while (cin>>index)
	{
		cout << GetUglyNumber(index) << endl;
	}
}