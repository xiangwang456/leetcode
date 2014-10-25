#include <iostream>
using namespace std;

long long InversePairsCore(int *data, int *copy, int start, int end);
long long InverserPairs(int *data, int n)
{
	if (data == NULL || n <= 0)
		return 0;
	int *copy = new int[n];
	for (int i = 0; i < n; i++)
		copy[i] = data[i];
	long long count = InversePairsCore(data, copy, 0, n - 1);
	delete copy;

	return count;
}

long long InversePairsCore(int *data, int *copy, int start, int end)
{
	if (start == end)
	{
		copy[start] = data[start];
		return 0;
	}

	int length = (end-start) / 2;
	int left = InversePairsCore(copy, data, start, start + length);
	int right = InversePairsCore(copy, data, start + length + 1, end);

	//i、j初始化为前半段和后半段的最后一个索引
	int i = start + length;
	int j = end;

	int copyindex = end;
	long long count = 0;
	while (i >= start&&j >= start + length + 1)
	{
		if (data[i] > data[j])
		{
			count += j - start - length;
			copy[copyindex--] = data[i--];
		}
		else
			copy[copyindex--] = data[j--];
	}

	for (; i >= start; i--)
		copy[copyindex--] = data[i];
	for (; j >= start + length + 1; j--)
		copy[copyindex--] = data[j];

	return left + right + count;
}

int main()
{
	int n;
	while (cin >> n)
	{
		int *nums = new int[n];
		for (int i = 0; i < n; i++)
			cin >> nums[i];
		cout << InverserPairs(nums, n) << endl;

		delete nums;
	}
}