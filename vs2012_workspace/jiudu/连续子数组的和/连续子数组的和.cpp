#include <iostream>
using namespace std;
bool invaliedInput = false;

void GetGreatestSum(int *nums, int n, int &start, int &end)
{
	if (nums == NULL || n <= 0)
	{
		invaliedInput = true;
		return ;
	}
	int currSum = -10000001;
	int greastSum = -10000001;
	for (int i = 0; i < n; i++)
	{
		if (currSum < 0)
		{
			currSum = nums[i];
			if ((currSum>greastSum))
				start = i;
		}
		else
			currSum += nums[i];
		if (currSum > greastSum)
		{
			greastSum = currSum;
			end = i;
		}

	}
	cout << greastSum<<" ";
	cout << start << " ";
	cout << end << endl;
}

int main()
{
	int n;
	while (cin >> n)
	{
		int *nums = new int[n];
		for (int i = 0; i < n; i++)
			cin >> nums[i];
		int start = 0, end = 0;
		GetGreatestSum(nums, n, start, end);
		delete[] nums;

	}
	return 0;
}