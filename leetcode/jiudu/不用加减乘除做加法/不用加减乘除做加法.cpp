#include <iostream>

using namespace std;

int sum(int n1, int n2)
{
	int sum, carry;
	do 
	{
		sum = n1^n2;
		carry = (n1&n2) << 1;
		n2 = carry;
		n1 = sum;
	} while (n2);
	return sum;
}

int main()
{
	int n1, n2;
	while (cin >> n1 >> n2)
	{
		cout << sum(n1, n2) << endl;
	}
}