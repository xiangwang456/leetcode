#include <iostream>
#include <vector>
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
		if(left>0&&right>0&&left>right)
		{
			int temp=left;
			left=right;
			right=temp;
		}
		if (left == -1)
			trees[i].lchild = NULL;
		else
			trees[i].lchild = &trees[left-1];
		if (right == -1)
			trees[i].rchild = NULL;
		else
			trees[i].rchild = &trees[right-1];

	}
}

void FindPath(BinaryNode *trees, vector<int>& path,int currentsum,int k);
void FindPath(BinaryNode *trees, int k)
{	
	if(trees==NULL||k<=0)
		return;
	vector<int> path;
	cout<<"result:"<<endl;
	int currentsum=0;
	FindPath(trees,path,currentsum,k);
}

void FindPath(BinaryNode *trees, vector<int>& path,int currentsum,int k)
{
	currentsum+=trees->value;
	path.push_back(trees->index);

	bool isleaf=trees->lchild==NULL&&trees->rchild==NULL;
	if(isleaf&&currentsum==k)
	{
		cout<<"A path is found: ";
		for(vector<int>::iterator iter=path.begin();iter!=path.end();iter++)
		{
			if(iter+1==path.end())
				cout<<*iter<<endl;
			else
				cout<<*iter<<" ";
		}
	}

	if(trees->lchild)
		FindPath(trees->lchild,path,currentsum,k);
	if(trees->rchild)
		FindPath(trees->rchild,path,currentsum,k);

	currentsum-=trees->value;
	path.pop_back();

	
}
int main()
{
	int n,k;
	while(cin>>n)
	{
		cin>>k;
		BinaryNode *trees=new BinaryNode[n];
		CreateTree(trees,n);
		FindPath(trees,k);

		delete[] trees;
	}
}