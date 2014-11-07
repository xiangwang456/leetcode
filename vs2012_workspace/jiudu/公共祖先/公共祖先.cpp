#include <iostream>
#include <vector>
using namespace std;
bool flag;
struct TreeNode
{
	int value;
	TreeNode *left, *right;
};

void Plant(TreeNode *&root)
{
	int t;
	cin >> t;
	if (t == 0)
		root = NULL;
	else
	{
		root = new TreeNode;
		root->value = t;
		Plant(root->left);
		Plant(root->right);
	}
	
}

void PrintTree(TreeNode *root)
{
	if (root != NULL)
	{
		cout << root->value<<" ";
		PrintTree(root->left);
		PrintTree(root->right);
	}
}

void GetPath(TreeNode *root, int value,vector<TreeNode*> &path)
{
	if (root == NULL)
		return;
	path.push_back(root);
	
	if (root->value == value)
		flag = true;
	else
	{
		if (!flag)
			GetPath(root->left,value,path);
		if (!flag)
			GetPath(root->right, value, path);
	}

	if (!flag)
		path.pop_back();
}

typedef vector<TreeNode*>::iterator iter;

int GetCommon(vector<TreeNode*> &path1, vector<TreeNode*> &path2)
{
	if (path1.size() == 0 || path2.size() == 0)
		return 0;
	iter iter1 = path1.begin();
	iter iter2 = path2.begin();
	while (iter1 != path1.end() && iter2 != path2.end() && *iter1 == *iter2)
	{
		iter1++;
		iter2++;
	}

	iter1--;
	iter2--;
	if (*iter1 == *iter2)
		return (*iter1)->value;
	else
		return 0;
}

int GetCommonParent(TreeNode *root, int val1, int val2)
{
	if (root == NULL)
		return 0;
	vector<TreeNode*> path1;
	vector<TreeNode*> path2;
	flag = false;
	GetPath(root, val1, path1);
	flag = false;
	GetPath(root, val2, path2);

	return GetCommon(path1, path2);
}

int main()
{
	int n;
	cin >> n;
	while (n--)
	{
		int val1, val2;
		
		TreeNode *root = NULL;
		Plant(root);
		//PrintTree(root);
		cin >> val1 >> val2;
		int result = GetCommonParent(root, val1, val2);
		if (result!=0)
			cout << result << endl;
		else
			cout << "My God" << endl;
	}

	
}