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
		unsigned int val=n;
		while(val)
		{
			if(val&1)
				count++;
			val>>=1;
		}

		printf("%d\n",count);
	}
	return 0;

}