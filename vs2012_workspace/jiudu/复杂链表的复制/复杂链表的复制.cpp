#include <iostream>

using namespace std;

struct ComplexNode
{
	int value;
	ComplexNode *pnext;
	ComplexNode *psibling;
};

//nodes是一个含有n个ComplexNode的数组
void CreateList(ComplexNode *nodes,int n)
{
	for (int i = 0; i < n; i++)
	{
		int num;
		cin >> num;
		nodes[i].value = num;
		if (i < n - 1)
			nodes[i].pnext = &nodes[i + 1];
		else
			nodes[i].pnext = NULL;
		nodes[i].psibling = NULL;
	}
	for (int i = 0; i < n; i++)
	{
		int sibling;
		cin >> sibling;
		if (sibling == 0)
			nodes[i].psibling = NULL;
		else
			nodes[i].psibling = &nodes[sibling - 1];
	}
}

void CloneNodes(ComplexNode *phead)
{
	ComplexNode *pnode = phead;
	while (pnode != NULL)
	{
		ComplexNode *pcloneNode = new ComplexNode;
		pcloneNode->value = pnode->value;
		pcloneNode->pnext = pnode->pnext;
		pcloneNode->psibling = NULL;

		pnode->pnext = pcloneNode;
		pnode = pcloneNode->pnext;
	}
}

void ConnectSlibingNodes(ComplexNode *phead)
{
	ComplexNode *pnode = phead;
	ComplexNode *pcloneNode = phead->pnext;
	while (pnode!=NULL)
	{
		if (pnode->psibling)
			pcloneNode->psibling = pnode->psibling->pnext;
		pnode = pcloneNode->pnext;
		if (pnode)
			pcloneNode = pnode->pnext;
		
	}
}

ComplexNode *DivideList(ComplexNode *phead)
{
	if (phead == NULL)
		return NULL;
	ComplexNode *pnode = phead;
	ComplexNode *pcloneHead, *pcloneNode;
	pcloneHead = phead->pnext;
	pcloneNode = pcloneHead;
	while (pnode != NULL)
	{
		pnode->pnext = pcloneNode->pnext;
		pnode = pnode->pnext;
		if (pnode)
			pcloneNode->pnext = pnode->pnext;
		else
			pcloneNode->pnext = NULL;
		if (pcloneNode)
			pcloneNode = pcloneNode->pnext;
		else
			pcloneNode = NULL;
		
	}
	return pcloneHead;

}

ComplexNode *Clone(ComplexNode *phead)
{
	CloneNodes(phead);
	ConnectSlibingNodes(phead);
	return DivideList(phead);
}

void PrintList(ComplexNode *phead)
{
	ComplexNode *pnode = phead;
	while (pnode)
	{
		int nodevalue = pnode->value;
		int clonevalue;
		if (pnode->psibling == NULL)
			clonevalue = 0;
		else
			clonevalue = pnode->psibling->value;
		cout << nodevalue << " " << clonevalue << endl;
		pnode = pnode->pnext;
	}
}

int main()
{
	int n;
	while (cin >> n)
	{
		ComplexNode* nodes = new ComplexNode[n];
		CreateList(nodes,n);
		ComplexNode *phead = &nodes[0];
		ComplexNode *pcloneHead=Clone(phead);

		PrintList(pcloneHead);
		//PrintList(pcloneHead);

		delete[] nodes;

	}
}