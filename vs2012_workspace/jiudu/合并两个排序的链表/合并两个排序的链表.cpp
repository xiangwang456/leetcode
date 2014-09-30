#include <stdio.h>

struct  Node
{
	int value;
	Node *next;
};


Node* merge(Node *first,Node *second)
{
	if(first==NULL&&second==NULL)
		return NULL;
	else if(second==NULL)
		return first;
	else if(first==NULL)
		return second;

	Node *result;
	if(first->value<second->value)
	{
		result=first;
		result->next=merge(first->next,second);
	}
	else
	{
		result=second;
		result->next=merge(first,second->next);
	}
	return result;
}

void __printf(Node *node)
{
	Node *i=node;
	while(i)
	{
		printf("%d",i->value);
		if(i->next)
		{
			i=i->next;
			printf(" ");
		}
		else
			break;
		
	}
	printf("\n");
}
int main()
{
	int n1,n2;
	Node *first,*i;
	Node *second,*j;
	
	while(scanf_s("%d %d",&n1,&n2)!=EOF)
	{
		if(!n1&&!n2)
		{
			printf("NULL\n");
			return 0;
		}
		i=new Node;
		j=new Node;
		first=i;
		second=j;
		for(int k=0;k<n1;k++)
		{
			Node *newNode=new Node;
			scanf_s("%d",&newNode->value);
			i->next=newNode;
			i=i->next;
		}
		i->next=NULL;
		for(int k=0;k<n2;k++)
		{
			Node *newNode=new Node;
			scanf_s("%d",&newNode->value);
			j->next=newNode;
			j=j->next;
		}
		j->next=NULL;
		
		__printf(first->next);
		__printf(second->next);

		Node *result=merge(first->next,second->next);
		__printf(result);
		delete first;  //bug Ã»ÓÐdelete¸É¾»
		delete second;
	}
	
	return 0;
}