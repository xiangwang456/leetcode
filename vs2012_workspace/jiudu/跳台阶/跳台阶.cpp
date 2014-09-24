#include <stdio.h>

long long times[71]={0,1,2};

int main()
{
	int n;
	
	for(int i=3;i<=70;i++)
		times[i]=times[i-1]+times[i-2];
	while(scanf("%d",&n)!=EOF)
	{
		printf("%lld\n",times[n]);
	}
	
	
	return 0;
}