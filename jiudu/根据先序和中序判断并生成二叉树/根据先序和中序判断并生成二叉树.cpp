#include <iostream>
#include <memory.h>
using namespace std;

typedef struct _Node
{
	int num;
	_Node *left;
	_Node *right;
}*pNode;

int pre[1005];  //先序遍历数组
int in[1005];	//中序遍历数组
int canCreate=1;   
int n;         //二叉树的节点个数 

void PreMidCreateTree(pNode &root,int preStart,int inStart,int len);
void PostOrder(_Node *node);
int main()
{
	while (cin>>n)
	{
		for(int i=0;i<n;i++)
			cin>>pre[i];
		for(int i=0;i!=n;i++)
			cin>>in[i];
		pNode root=NULL;
		PreMidCreateTree(root,0,0,n);
		if(!canCreate)
			cout<<"No";
		else
			PostOrder(root);
		memset(pre,0,1005);
		memset(in,0,1005);
		canCreate=1;
		cout<<endl;
	}
}

void PreMidCreateTree(pNode &node,int preStart,int inStart,int len)
{
	
	if(len<=0)
		return;
	node=new _Node;
	node->num=pre[preStart];
	int m=-1;                  //m是前序的第一个节点在中序中的位置
	for(int i=0;i!=n;i++)
	{
		if(in[i]==pre[preStart])
		{
				m=i;
				break;
		}
		
	}

	if((m<inStart)||(m>inStart+len-1))
	{
		canCreate=0;
		return;
	}
	node->left=NULL;
	node->right=NULL;
	PreMidCreateTree(node->left,preStart+1,inStart,m-inStart);
	PreMidCreateTree(node->right,preStart+1+m-inStart,m+1,len-(m+1-inStart));
}


void PostOrder(_Node *node)
{
	if(node==NULL)
		return;
	PostOrder(node->left);
	PostOrder(node->right);
	cout<<node->num<<" ";
}