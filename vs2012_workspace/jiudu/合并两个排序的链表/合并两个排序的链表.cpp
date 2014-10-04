#include <stdio.h>

struct  Node
{
	int value;
	Node *next;
};


 Node* merge( Node *first, Node *second)
{
	/*  递归实现 ： 改变了first和second的指向
	Node *result;
	if(first==NULL&&second==NULL)
		result=NULL;
	else if(second==NULL)
		result=first;
	else if(first==NULL)
		result=second;
	else if(first->value<second->value)
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
	*/

	Node *i;
	Node *j;
	Node *result,*index;
	int n;
	for(i=first,j=second,n=0;i!=NULL&&j!=NULL;)
	{
		if(n==0)
		{
			if(i->value<j->value)
			{
				result=i;
				index=result;
				i=i->next;
				n++;
			}else{
				result=j;
				index=result;
				j=j->next;
				n++;
			}
		}else{
			if(i->value<j->value)
			{
				index->next=i;
				index=index->next;        //若index->next不确定存在时不可以index=index->next;
				i=i->next;
			}else{
				index->next=j;
				index=index->next;
				j=j->next;
			}
		}
		
	}

	if(i==NULL)
		index->next=j;
	else if(j==NULL)
		index->next=i;
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

void deletenode(Node *node)
{
	Node *i=node;
	Node *delN=node;
	while(i->next)
	{
		delN=i;
		i=i->next;
		delete delN;
	}
	delete i;
	node=NULL;
}
int main()
{
	int n1,n2;
	Node *first,*second;
	Node *i;
	
	while(scanf_s("%d %d",&n1,&n2)!=EOF)
	{
		if(!n1&&!n2)
		{
			printf("NULL\n");
			return 0;
		}

		for(int k=0;k<n1;k++)
		{
			Node *newNode=new Node;
			scanf_s("%d",&newNode->value);
			newNode->next=NULL;
			if(k==0)
			{
				first=newNode;
				i=first;
			}
			else
			{

				i->next=newNode;
				i=i->next;
			}

		}
		for(int k=0;k<n2;k++)
		{
			Node *newNode=new Node;
			scanf_s("%d",&newNode->value);
			newNode->next=NULL;
			if(k==0)
			{
				second=newNode;
				i=second;
			}
			else{
				i->next=newNode;
				i=i->next;
			}
		}
		
		__printf(first);
		__printf(second);

		Node *result=merge(first,second);
		__printf(result);
		deletenode(result);  //bug 没有delete干净

	}
	
	return 0;
}