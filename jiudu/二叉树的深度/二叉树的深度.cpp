#include <iostream>
using namespace std;

struct BinaryNode
{
	int value;
	BinaryNode *lchild;
	BinaryNode *rchild;
};

int getDeepth(BinaryNode *root)
{
	if (root = NULL)
		return 0;
	int left = getDeepth(root->lchild);
	int right = getDeepth(root->rchild);

	return left > right ? left+1 : right+1;
}
