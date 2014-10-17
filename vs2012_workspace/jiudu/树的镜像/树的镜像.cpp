#include <stdio.h>

struct BinaryNode
{
	int value;
	BinaryNode *left;
	BinaryNode *right;
};

void CreateBinary(BinaryNode *node,int n)
{
	
	for (int i = 0; i < n; i++)
	{
		scanf("%d", &node[i].value);
		node[i].left = NULL;
		node[i].right = NULL;
	}
	fflush(stdin);
	for (int i = 0; i < n; i++)
	{
		char c;
		scanf("%c", &c);
		if ('d' == c)
		{
			int left, right;
			scanf("%d%d", &left, &right);
			node[i].left = &node[left-1];
			node[i].right = &node[right-1];
		}
		else if ('l' == c)
		{
			int left;
			scanf("%d", &left);
			node[i].left = &node[left-1];
		}
		else if ('r' == c)
		{
			int right;
			scanf("%d", &right);
			node[i].right = &node[right-1];
		}
		else if ('z' == c);
		else
		{
			printf("input error :retry!\n");
			i--;
		}
		fflush(stdin);
	}
}

void MirrorRecursively(BinaryNode *tree)
{
	if ((tree == NULL) || (tree->left == NULL&&tree->right == NULL))
		return;
	BinaryNode *temp;
	temp = tree->left;
	tree->left = tree->right;
	tree->right = temp;
	MirrorRecursively(tree->left);
	MirrorRecursively(tree->right);
}

void PrintTree(BinaryNode *tree)
{
	if (tree == NULL)
		return;
	printf("%d ", tree->value);
	PrintTree(tree->left);
	PrintTree(tree->right);
}

void freeTree(BinaryNode *tree)
{
	if (tree == NULL)
		return;
	freeTree(tree->left);
	freeTree(tree->right);
	delete tree;
}

int main()
{
	int n;
	BinaryNode *node = NULL;
	while (scanf("%d", &n) != EOF)
	{
		if (n == 0)
		{
			printf("NULL\n");
			continue;
		}

		node = new BinaryNode[n];
		CreateBinary(node, n);
// 		printf("===============×ª»»Ç°==============\n");
// 		PrintTree(node);
		printf("\n");
		MirrorRecursively(node);
		/*printf("===============¾µÏñ==============\n");*/
		PrintTree(node);
		printf("\n");
		//freeTree(node);
	}
}

