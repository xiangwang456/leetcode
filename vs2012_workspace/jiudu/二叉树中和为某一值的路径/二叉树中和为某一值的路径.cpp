#include <iostream>
#include <stack>
using namespace std;


struct BinaryNode
{
	int value;
	int index;
	BinaryNode *lchild;
	BinaryNode *rchild;
};

void CreateTree(BinaryNode *trees, int n)
{
	for (int i = 0; i < n; i++)
	{
		trees[i].index = i + 1;
		cin >> trees[i].value;
		int left, right;
		cin >> left >> right;
		if (left == -1)
			trees[i].lchild = NULL;
		else
			trees[i].lchild = &trees[left];
		if (right == -1)
			trees[i].rchild = NULL;
		else
			trees[i].rchild = &trees[right];

	}
}

void FindPath(BinaryNode *trees, int k)
{

}

int main()
{

}