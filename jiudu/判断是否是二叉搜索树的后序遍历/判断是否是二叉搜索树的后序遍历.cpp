#include <iostream>

using namespace std;

bool IsOrderOfBST(int *queue, int n)
{
	if (queue == NULL || n <= 0)
		return false;
	int root = queue[n - 1];
	int i = 0;

	//找到BST的左子树和右子树，break后i的值是右子树的第一个点
	for (; i < n - 1; i++)
	{
		if (queue[i]>root)
			break;
	}

	int j = i;

	//若右子树中含有比root小的值则返回flase
	for (; j < n - 1; j++)
	{
		if (queue[j] < root)
			return false;
	}

	bool lchild=true, rchild=true;
	if (i>0)
		lchild = IsOrderOfBST(queue, i );
	if (i < n - 1)
		rchild = IsOrderOfBST(queue + i, n - i - 1);
	return lchild&&rchild;
}

int main()
{
	int n;
	while (cin >> n)
	{
		int *num = new int[n];
		for (int i = 0; i < n; i++)
			cin >> num[i];
		IsOrderOfBST(num, n) ? cout << "Yes" << endl : cout << "No" << endl;

		delete[] num;
	}

	return 0;
}