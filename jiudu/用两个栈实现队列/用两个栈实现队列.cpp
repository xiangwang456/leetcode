#include <stack>
#include <stdio.h>

using namespace std;


int main()
{
	stack<int> iBack;
	stack<int> iFront;

	int opearConut=0;
	char operation[5]; 
	scanf("%d",&opearConut);
		for(int i=0;i!=opearConut;i++)
		{
			scanf("%s",&operation);
			if(operation[1]=='U')
			{
				int num;
				scanf("%d",&num);
				iBack.push(num);
			}
			else if (operation[1]=='O')
			{
				if(iFront.size())
				{
					printf("%d\n",iFront.top());
					iFront.pop();
				}
				else
				{
					if(!iBack.size())
						printf("-1\n");
					else
					{
						while(iBack.size()>0)
						{
							iFront.push(iBack.top());
							iBack.pop();
						}
						printf("%d\n",iFront.top());
						iFront.pop();
					}
				}
			}
		}
	
	return 0;
}