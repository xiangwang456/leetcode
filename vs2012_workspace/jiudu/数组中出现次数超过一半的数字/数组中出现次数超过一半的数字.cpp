#include <iostream>

using namespace std;

void swap(int *n1, int *n2)
{
	int temp = *n1;
	*n1 = *n2;
	*n2 = temp;
}

int Partition(int *nums,int length,int start, int end)               //未搞定
{
	if (nums == NULL&&length <= 0 && start < 0 && end >= length)
		throw new exception("invalied parameters");

	int index = start;                                               //应该是随机数
	swap(nums + index, nums + end);
	
	int small = start - 1;
	for (int i = start; i != end; i++)
	{
		if (nums[i] < nums[end])
		{
			small++;
			if (small!=i)
				swap(nums + small, nums + i);
		}
	}
	small++;
	swap(nums + end, nums + small);
	return small;
}

bool IsMoreThanHalf(int *nums, int length, int num)
{
	int times = 0;
	for (int i = 0; i < length; i++)
	{
		if (*(nums + i) == num)
			times++;
	}

	return times > length / 2;
}



int MoretThanHalf(int *nums, int length)  //利用超过一半的数字出现的次数比其他数字出现的次数总和还要多
{
	if (nums == NULL&&length <= 0)
		return -1;
	int times = 1, more = nums[0];
	for (int i = 1; i < length; i++)
	{
		
		if (nums[i] == more)
			times++;
		else
			times--;

		if (times == -1)  
		{
			more = nums[i];
			times = 1;
		}

	}

	if (IsMoreThanHalf(nums, length, more))
		return more;
	else
		return -1;
}
int MoretThanHalf_change(int *nums, int length)
{
	if (nums == NULL&&length <= 0)
		return -1;

	int mid = length >> 1;
	int start = 0;
	int end = length - 1;
	int index = Partition(nums, length, start, end);
	while (index != mid)
	{
		if (index > mid)
		{
			end = index - 1;
			index = Partition(nums, length, start, end);
		}
		else
		{
			end = index + 1;
			index = Partition(nums, length, start, end);
		}		
	}

	int result = nums[index];
	if (IsMoreThanHalf(nums, length, result))
		return result;
	else
		return -1;
	
}
int main()
{
	int n;
	while (cin >> n)
	{
		int *nums = new int[n];
		for (int i = 0; i < n; i++)
			cin >> nums[i];
		cout << MoretThanHalf_change(nums, n) << endl;
		delete[] nums;
	}
}