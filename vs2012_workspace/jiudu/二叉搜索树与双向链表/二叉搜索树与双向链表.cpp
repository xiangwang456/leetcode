#include <iostream>

using namespace std;
struct BinaryTreeNode
{
	int value;
	BinaryTreeNode *left;
	BinaryTreeNode *right;
};

void ConvertNode(BinaryTreeNode *proot, BinaryTreeNode **lastNode);
BinaryTreeNode *Convert(BinaryTreeNode *proot)
{
	BinaryTreeNode *lastnodeInList=NULL;
	ConvertNode(proot, &lastnodeInList);
	BinaryTreeNode *head = lastnodeInList;
	while (head->left != NULL)
	{
		head = head->left;
	}
	return head;
}

void ConvertNode(BinaryTreeNode *proot, BinaryTreeNode **lastNode)
{
	if (proot == NULL)
		return;
	BinaryTreeNode *currentNode = proot;

	if (proot->left != NULL)
		ConvertNode(proot->left, lastNode);
	proot->left = *lastNode;
	if (*lastNode != NULL)
		(*lastNode)->right = currentNode;
	
	*lastNode = currentNode;
	if (currentNode->right != NULL)
		ConvertNode(currentNode->right, lastNode);

}


BinaryTreeNode* CreateTree(BinaryTreeNode *tree)
{
	int value;
	cin >> value;
	if (value == 0)
		return NULL;
	tree = new BinaryTreeNode;
	tree->value = value;
	tree->left=CreateTree(tree->left);
	tree->right=CreateTree(tree->right);
	return tree;
}

int main()
{
	int n;
	
		cin >> n;
		while (n--)
		{
			BinaryTreeNode *tree = NULL;
			tree = CreateTree(tree);
			BinaryTreeNode *head = Convert(tree);
			while (head)
			{
				cout << head->value << " ";
				head = head->right;
			}
			cout << endl;
		}
	
	

}