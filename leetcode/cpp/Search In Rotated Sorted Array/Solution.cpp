#include <iostream>

using namespace std;

class Solution {
public:

	//时间复杂度O（log n) 空间复杂度O(1)
	//用mid把数组分为两部分，在两部分中分别找出有序的部分
	
	int search(int A[], int n, int target)
	{
		if (n <= 0 || A == nullptr)
			return -1;

		int first = 0, last = n - 1;
		int mid;
		while (first <= last)
		{
			mid = first + (last - first) / 2;
			if (A[mid] == target)
				return mid;
			if (A[mid] > A[last])  //A[first...mid]有序
			{
				if (A[first] <= target&&target < A[mid])
					last = mid - 1;
				else
					first = mid + 1;
			}
			else               //A[mid...last]有序
			{
				if (A[mid] < target&&target <= A[last])
					first = mid + 1;
				else
					last = mid - 1;
			}

		}
		return -1;
	}
};