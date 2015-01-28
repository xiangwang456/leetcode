#include <iostream>
#include <stdio.h>

using namespace std;

bool FindNumWithSum(int *nums, int n, int k, int &n1, int &n2)
{
	if (nums == NULL || n <= 0)
		return false;
	
	int ahead = n - 1;
	int behind = 0;
	while (ahead > behind)
	{
		int sum = nums[ahead] + nums[behind];
		if (sum == k)
		{
			n1 = nums[behind];
			n2 = nums[ahead];
			return true;
		}
		else if (sum > k)
			ahead--;
		else
			behind++;
	}
	return false;
}
int main()
{
	int n;
	while (scanf_s("%d",&n)!=EOF)
	{
		int k;
		int *nums = new int[n];
		scanf_s("%d", &k);
		for (int i = 0; i < n; i++)
			scanf_s("%d", nums + i);

		int n1=0, n2=0; //用来返回带输入的值
		if (FindNumWithSum(nums, n, k, n1, n2))
		{
			if (n1>n2)
			{
				int temp = n1;
				n1 = n2;
				n2 = temp;
			}
			printf("%d %d\n", n1, n2);
		}
		else
			printf("-1 -1\n");
		delete[] nums;
	}
}