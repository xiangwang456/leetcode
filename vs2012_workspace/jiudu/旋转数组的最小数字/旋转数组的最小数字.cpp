#include <stdio.h>

using namespace std;

int main()
{
	int n;
	while(scanf("%d",&n)!=EOF)
	{
		int m=0;  //用来与后一个变量进行比较，若后一个较小，则说明后一个是最小的
		int first; //记录第一个变量
		int num=0;
		scanf("%d",&num);
		m=first=num;    
		int i;   //循环变量
		bool isEnd=false;
		for(i=1;i!=n;i++)
		{
			scanf("%d",&num);
			if((false==isEnd)&&(num<m))
			{
				printf("%d\n",num);
				isEnd=true;
			}		
		}
		if((false==isEnd)&&(i==n))
			printf("%d\n",first);
	}
	return 0;
}