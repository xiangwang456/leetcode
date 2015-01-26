#include <iostream>
using namespace std;

bool havaCommon = false;

struct Node
{
	int value;
	Node *next;
};

int GetlistLength(Node *node)
{
	int count = 0;
	while (node->next != NULL)
	{
		count++;
		node = node->next;
	}
	return count;
}

int GetFirstCommonNode(Node *phead1, Node *phead2)
{
	int n1 = GetlistLength(phead1);
	int n2 = GetlistLength(phead2);
	Node *plong = phead1;
	Node *pshort = phead2;
	int diff;
	if (n1 < n2)
	{
		plong = phead2;
		pshort = phead1;
		diff = n2 - n1;
	}
	else
		diff = n1 - n2;

	while (diff-->0)
		plong = plong->next;

	while (plong != NULL&&pshort != NULL&&plong->value != pshort->value)
	{
		plong = plong->next;
		pshort = pshort->next;
	}

	if (plong==NULL || pshort==NULL)
		return -1;
	else
	{
		havaCommon = true;
		return plong->value;
	}
}

void CreateNode(Node &node,int n)
{
	if (n <= 0)
		return;
	Node *tmp = &node;
	cin >> node.value;
	node.next = NULL;

	for (int i = 1; i < n; i++)
	{
		Node *newnode = new Node;
		cin >> newnode->value;
		newnode->next = NULL;
		tmp->next = newnode;
		tmp = newnode;
	}
}

void FreeNode(Node *node)
{
	Node *tmp = node;
	Node *plastNode = node;
	while (plastNode)
	{
		plastNode = tmp->next;
		delete tmp;
	}
}

void PrintNode(Node *node)
{
	while (node)
	{
		cout << node->value << " ";
		node = node->next;
	}
}

int main()
{
	int n1,n2;
	while (cin >> n1>>n2)
	{
		Node node1, node2;
		CreateNode(node1, n1);
		CreateNode(node2, n2);
		int value = GetFirstCommonNode(&node1, &node2);
		if (havaCommon)
			cout << value << endl;
		else
			cout << "My God" << endl;
		//FreeNode(&node);
	}
}