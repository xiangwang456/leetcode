#include <stdio.h>

long long nums[71]={0,1,2};

int main()
{
	for(int i=3;i<=70;i++)
	{

			nums[i]=nums[i-2]+nums[i-1];
	}
	int n;
	while (scanf("%d",&n)!=EOF)
		printf("%lld\n",nums[n]);
	return 0;
}