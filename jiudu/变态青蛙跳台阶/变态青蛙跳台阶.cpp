#include <stdio.h>

long long times[51]={0,1,2};

int main()
{
	for(int i=3;i<=50;i++)
		{
			for(int j=1;j<i;j++)
				times[i]+=times[j];
			times[i]+=1;
		}
	int n;
	while(scanf("%d",&n)!=EOF)
		printf("%lld\n",times[n]);
	return 0;

}