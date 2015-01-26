#include <stdio.h>

int main()
{
	int n;
	while(scanf("%d",&n)!=EOF)
	{
		int *nums=new int[n];
		for(int i=0;i<n;i++)
			scanf("%d",&nums[i]);
		int *adjust=new int[n];
		int t=0;  //¼ÇÂ¼adjustµÄË÷Òý
		for(int i=0;i<n;i++)
			if(nums[i]%2==1)
				adjust[t++]=nums[i];
		for(int i=0;i<n;i++)
			if(nums[i]%2==0)
				adjust[t++]=nums[i];

		for(int i=0;i<n;i++)
		{
			if(i!=n-1)
				printf("%d ",adjust[i]);
			else
				printf("%d\n",adjust[i]);
			
		}

	}
	return 0;
	
}