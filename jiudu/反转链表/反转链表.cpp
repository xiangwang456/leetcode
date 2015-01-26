#include <stdio.h>

struct Node{
	int value;
	Node *next;
	Node *pre;
};

int main()
{
	int n;  //链表个数
	while(scanf("%d",&n)!=EOF)
	{

		if(n==0)
		{
			printf("NULL\n");
			continue;
		}

		Node *ilist=new Node;
		int num;
		scanf("%d",&num);
	
		ilist->value=num;
		ilist->next=NULL;
		ilist->pre=NULL;
		Node *p=ilist;  
		while(n-->1) //循环n-1次
		{
			scanf("%d",&num);
			Node *new_node=new Node;
			new_node->value=num;
			new_node->next=NULL;
			new_node->pre=p;
			p->next=new_node;
			p=new_node;
		}
		while (p->pre)
		{
			printf("%d ",p->value);
			p=p->pre;
		}
		printf("%d\n",p->value);
	}
}