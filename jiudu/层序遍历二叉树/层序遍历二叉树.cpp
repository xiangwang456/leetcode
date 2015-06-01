#include <iostream>
#include <deque>

using namespace std;

struct BinaryNode
{
	int value;
	BinaryNode *lchild;
	BinaryNode *rchild;
};

void CreateTree(BinaryNode *trees,int n)
{
	for (int i = 0; i < n; i++)
	{
		cin >> trees[i].value;
		trees[i].lchild = NULL;
		trees[i].rchild = NULL;
	}
	int lchild, rchild;
	char ch;
	for (int i = 0; i < n; i++)
	{
		cin >> ch;
		switch (ch)
		{
		case 'd':
			cin >> lchild >> rchild;
			trees[i].lchild = &trees[lchild - 1];
			trees[i].rchild = &trees[rchild - 1];
			break;
		case 'l':
			cin >> lchild;
			trees[i].lchild = &trees[lchild - 1];
			break;
		case 'r':
			cin >> rchild;
			trees[i].rchild = &trees[rchild - 1];
			break;
		case 'z':
		default:
			break;

		}
	}
}

void PrintFormTopToBottom(BinaryNode *tree,int n)
{


	if (tree == NULL)
		return;

	int x = 0;
	deque<BinaryNode*> deque_tree;
	deque_tree.push_back(tree);
	while (deque_tree.size())
	{
		BinaryNode *node = deque_tree.front();
		x++;
		if (n != x)
			cout << node->value << " ";
		else
			cout << node->value << endl;

		deque_tree.pop_front();

		
		if (node->lchild)
			deque_tree.push_back(node->lchild);
		if (node->rchild)
			deque_tree.push_back(node->rchild);
	}
}

// void printTree(BinaryNode *root) //ÏÈÐò±éÀú
// {
// 
// 	if (root == NULL)
// 		return;
// 	printf("%d ", root->value);
// 
// 	if (root->lchild)
// 		printTree(root->lchild);
// 	if (root->rchild)
// 		printTree(root->rchild);
// 
// 
// }
int main()
{
	int n;
	while (cin >> n)
	{
		BinaryNode *trees = new BinaryNode[n];
		CreateTree(trees, n);
		//printTree(&trees[0]);
		PrintFormTopToBottom(&trees[0],n);
		delete[] trees;
	}
}