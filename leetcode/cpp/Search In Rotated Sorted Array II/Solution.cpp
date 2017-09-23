#include <iostream>
using namespace std;

class Solution
{
public:
	//若果有重复
	//时间复杂度O（n） 空间复杂度O（1）
	bool search(int A[], int n, int target) 
	{
		if (A == nullptr || n <= 0)
			return false;
		int first = 0;
		int last = n - 1;
		int mid;
		while (first <= last)
		{
			mid = first + (last - first) / 2;
			if (A[mid] == target)
				return true;
			if (A[mid] > A[last])
			{
				if (A[first] <= target&&target < A[mid])
					last = mid - 1;
				else
					first = mid + 1;
			}
			else if (A[mid] < A[last])
			{
				if (A[mid] < target&&target <= A[last])
					first = mid + 1;
				else
					last = mid - 1;
			}
			else
				last--;
		}
		return false;
	}
};