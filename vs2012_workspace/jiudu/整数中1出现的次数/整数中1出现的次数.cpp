#include <iostream>
using namespace std;

int Count1(int n)
{
	int temp = n;
	int base = 1;
	int rem;
	int sum = 0;
	while(temp)
	{
		rem = temp%10;
		temp = temp/10;
		
		if (rem == 0)
			sum += temp * base;
		else if (rem == 1)
			sum += temp * base + n - (n / base)*base + 1;
		else
			sum += (temp + 1)*base;
		base *= 10;

	}
	return sum;
}

int main()
{
	int n1,n2;
	while (cin >> n1>>n2)
	{
		if (n1 > n2)
		{
			int temp = n1;
			n1 = n2;
			n2 = temp;
		}
		if (n1 == 0)
			cout << Count1(n2) << endl;
		else
			cout << (Count1(n2) - Count1(n1-1)) << endl;
	}
}