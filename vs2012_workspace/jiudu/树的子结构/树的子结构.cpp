#include <stdio.h>

struct BinaryTree
{
	int value;
	BinaryTree *left;
	BinaryTree *right;
};


void CreateTree(BinaryTree *trees, int m) //m节点个数， trees存储节点的数组
{
	
	for (int i = 0; i < m; i++)  //创建n个节点且赋值
	{
		int num;
		scanf("%d", &num);
		trees[i].value = num;
		trees[i].left = NULL;
		trees[i].right = NULL;
	}

	for (int i = 0; i < m; i++) //设置每个节点的左右孩子，共有m个节点
	{
		int j;// 第i个节点的孩子个数
		scanf("%d", &j);
		if (j == 0)
			continue;
		else if (j == 1)
		{
			int child1;
			scanf("%d", &child1);
			trees[i].left = &trees[child1 - 1];
		}
		else if (j == 2)
		{
			int child1, child2;
			scanf("%d%d", &child1, &child2);
			trees[i].left = &trees[child1 - 1];
			trees[i].right = &trees[child2 - 1];
		}
	}
}

bool DoesMatch(BinaryTree *tree1, BinaryTree *tree2)
{
	if (tree2 == NULL)
		return true;
	if (tree1 == NULL)
		return false;
	if (tree1->value != tree2->value)
		return false;
	return DoesMatch(tree1->left, tree2->left) && DoesMatch(tree1->right, tree2->right);
}

bool IsSubtree(BinaryTree *tree1, BinaryTree *tree2)
{
	bool result = false;
	if (tree1 != NULL&&tree2 != NULL)
	{
		result = DoesMatch(tree1, tree2);
		if (!result)
			result = IsSubtree(tree1->left, tree2);
		if (!result)
			result = IsSubtree(tree1->right, tree2);
	}
	return result;

}



void printTree(BinaryTree *root) //先序遍历
{

	if (root == NULL)
		return;
	printf("%d ", root->value);

	if (root->left)
		printTree(root->left);
	if (root->right)
		printTree(root->right);


}

void freeTree(BinaryTree *tree)
{
	if (tree == NULL)
		return;
	freeTree(tree->left);
	freeTree(tree->right);
	delete tree;
}

int main()
{
	int m, n;
	BinaryTree *trees_m = NULL;
	BinaryTree *trees_n = NULL;

	while (scanf("%d%d", &m, &n) != EOF)
	{
		if (n <= 0 || m <= 0)
		{
			printf("NO\n");
			continue;
		}
		trees_m = new BinaryTree[m];
		trees_n = new BinaryTree[n];
		CreateTree(trees_m, m);
		CreateTree(trees_n, n);

		bool ismatch = IsSubtree(trees_m, trees_n);
		if (ismatch)
			printf("YES\n");
		else
			printf("NO\n");
		//printTree(&trees_m[0]);
		//trees_n = new BinaryTree[n+1];
		//freeTree(trees_m);
		//freeTree(trees_n);
	}
	return 0;
}