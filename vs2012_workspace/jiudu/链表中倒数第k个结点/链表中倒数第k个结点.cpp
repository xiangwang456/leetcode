#include <stdio.h>


using namespace std;
struct My_list
{
	int value;
	My_list *next;
};



int main()
{
	int n;//list元素个数
	My_list *ilist=NULL;
	while (scanf_s("%d", &n) != EOF)
	{
		int result;
		int lastIndex;
		scanf_s("%d", &lastIndex);

		int  t = n - lastIndex;
		My_list *endlist;
		for(int i=0;i<n;i++)
		{
			
			int num;
			scanf("%d", &num);
			if(i==0)  //建立链表
			{
				ilist=new My_list();
				ilist->value=num;
				ilist->next=NULL;
				endlist=ilist;
			}
			else    // 尾插法
			{
				My_list *node=new My_list();
				node->value=num;
				node->next=NULL;
				endlist->next=node;
				endlist=node;
			}
			
			
			if (t == i)
				result = num;
			
		}
		if (t < 0||lastIndex<=0)
			printf("NULL\n");
		else
			printf("%d\n", result);
	}
}