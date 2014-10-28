#include <iostream>
#include <stdio.h>
using namespace std;

int GetFirst(int *nums, int length,int k, int start, int end)
{
	if (start > end)
		return -1;
	int midi = (end + start) / 2;
	
	while (start <= end)
	{
		if (nums[midi] == k)
		{
			if ((midi > 0 && nums[midi - 1] != k) || (midi == 0))
				return midi;
			else
				end = midi - 1;
		}
		else if (nums[midi] > k)
			end = midi - 1;
		else
			start = midi + 1;
		midi = (end + start) / 2;
	}

	//return GetFirst(nums, length,k, start, end);
	return -1;

}

int GetEnd(int *nums, int length,int k, int start, int end)
{
	if (start > end)
		return -1;

	int midi = (end + start) / 2;
	while (start <= end)
	{
		if (nums[midi] == k)
		{
			if ((midi < length - 1 && nums[midi + 1] != k) || (midi == length - 1))
				return midi;
			else
				start = midi + 1;
		}

		else if (k < nums[midi])
			end = midi - 1;
		else
			start = midi + 1;
		midi = (end + start) / 2;
	}

	return -1;
}

int main()
{
	int n;
	while (scanf("%d",&n)!=EOF)
	{
		int *nums = new int[n];
		for (int i = 0; i < n; i++)
			scanf("%d", &nums[i]);

		int searchnum, k;
		scanf("%d", &searchnum);
		while (searchnum-->0)
		{
			scanf("%d", &k);
			if (k < nums[0] || k>nums[n - 1])
				printf("%d\n",0);
			else
			{
				int start = GetFirst(nums, n, k, 0, n - 1);
				int end = GetEnd(nums, n, k, 0, n - 1);
				if (start == end&&start == -1)
					printf("%d\n", 0);
				else
					printf("%d\n", end - start + 1);
			}
		}
	}
}