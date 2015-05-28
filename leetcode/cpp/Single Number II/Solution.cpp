#include <iostream>
using namespace std;

class Solution {
public:

	//时间复杂度O（n) 空间复杂度O（1）
	//用一个数组记录一个int的32位，如果这个数出现了三次，对3取余一定是0，不是零的则是出现一次的那个数
	int singleNumber(int A[], int n) {
		const int num = sizeof(int)* 8;
		int bitnum[num];
		fill(bitnum, bitnum + num, 0);
		for (int i = 0; i < n; i++)
		{
			for (int j = 0; j < num; j++)
			{
				bitnum[j] += (A[i] >> j) & 1;
				bitnum[j] %= 3;
			}
		}

		int res=0;
		for (int i = 0; i < num; i++)
			res += (bitnum[i] << i);
		return res;
	}
};