#include <stdio.h>

int main()
{
	int n;  //n位数
	int max=1; //最大数
	scanf_s("%d", &n);
	for (int i = 0; i < n; i++)
		max *= 10;
	for (int i = 0; i < max; i++)
		printf("%d\n", i);
	scanf_s("%d", &n);
}