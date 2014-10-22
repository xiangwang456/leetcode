#include <iostream>
#include <vector>
#include <functional>
#include <set>

using namespace std;
typedef multiset<int, greater<int> > intset;
typedef multiset<int, greater<int> >::iterator iterator_set;


//时间复杂度 nlgk
void GetLeastNumbers(vector<int> &data, int k, intset &leastNum)
{
	if (k <= 0 && k > data.size())
		return;
	int i = 0;
	for (vector<int>::iterator iter = data.begin(); iter != data.end(); iter++,i++)
	{
		if (i<k)
			leastNum.insert(*iter);
		else
		{
			iterator_set greateriter = leastNum.begin();
			if (*iter <= *greateriter)
			{
				leastNum.erase(greateriter);
				leastNum.insert(*iter);
			}
		}
	}
	
}

void swap(int *n1, int *n2);
int Partition(int *nums, int lo, int hi)
{
	if (nums == NULL)
		return -1;
	int x = nums[hi];
	int small = lo - 1;
	for (int i = lo; i < hi; i++)
	{
		if (nums[i] < x)
		{
			small++;
			if (i != small)
			{
				swap(nums + i, nums + small);
			}
		}
	}
	small++;
	swap(nums + hi, nums + small);
	return small;
}

void swap(int *n1, int *n2)
{
	int temp = *n1;
	*n1 = *n2;
	*n2 = temp;
}


//O(n) 算法 ，但是改变原始数组
void GetLeastNumbers_change(int *source, int *result, int n, int k)
{
	if (source ==NULL || result == NULL || n <= 0 || k <= 0 || k >= n)
		return;
	k -= 1;
	int start = 0;
	int end = n-1;
	int index = Partition(source, 0, n - 1);
	while (index != k )
	{
		if (index > k)
		{
			end = index - 1;
			index = Partition(source, start, end);
		}
			
		else if (index < k)
		{
			start = index + 1;
			index = Partition(source, start, end);
		}
			
	}

	for (int i = 0; i <= k; i++)
		result[i] = source[i];
}

void Quicksort(int *nums, int lo,int hi)
{
	if (lo < hi)
	{
		int index = Partition(nums, lo, hi);
		Quicksort(nums, lo, index - 1);
		Quicksort(nums, index + 1, hi);
	}

}

int main()
{
	int n, k;
	while (cin >> n >> k)
	{
		//方法一：利用大顶堆
// 		vector<int> data;
// 		for (int i = 0; i < n; i++)
// 		{
// 			int num;
// 			cin >> num;
// 			data.push_back(num);
// 		}
// 		intset leastnums;
// 		GetLeastNumbers(data, k, leastnums);
// 		for (multiset<int, greater<int> >::reverse_iterator iter = leastnums.rbegin(); iter != leastnums.rend(); iter++)
// 			cout << *iter<<" ";
// 		cout << endl;

		//方法二：利用Partition
		int *result = new int[k];
		int *data = new int[n];
		for (int i = 0; i < n; i++)
		{
			int num;
			cin >> data[i];
		}
		//GetLeastNumbers_change(data, result, n, k);
		Quicksort(data, 0, n - 1);
		for (int i = 0; i < k-1; i++)
			cout << data[i] << " ";
		cout << data[k - 1] << endl;
		delete[] result;
		delete[] data;
	}
}