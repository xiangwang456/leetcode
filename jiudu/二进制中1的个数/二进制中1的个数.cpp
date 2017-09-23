#include <stdio.h>

int main()
{
	int t;
	scanf("%d",&t);
	while(t-->0)
	{
		int n;
		scanf("%d",&n);
		int count=0;
		if(n>0)
		{
			while (n)
			{
				if(n&1)
					count++;
				n>>=1;
			}
		}
		else
		{
			while(n)
			{
				n&=n-1;
				count++;
			}
		}
		printf("%d\n",count);
	}
	return 0;
}