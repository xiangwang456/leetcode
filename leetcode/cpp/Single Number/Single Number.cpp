#include <iostream>
using namespace std;
class Solution
{
public:

	//抑或运算
	//时间复杂度 O(n) 空间复杂度O(1)
	int singleNumber(int A[], int n)
	{
		if (A == NULL || n <= 0)
			return 0;
		int x = 0;
		for (int i = 0; i < n; i++)
		{
			x = x^A[i];
		}
		return x;
	}
};