#include <cstdio>
#include <iostream>

using namespace std;

long long fibonacci[70] = { 0, 1 };

int main()
{
	int n; 
	for (int i = 2; i <= 70; i++)
		fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2];
	while (scanf("%d",&n)!=EOF)
	{
		printf("%lld\n", fibonacci[n]);
	}
	

	return 0;

}