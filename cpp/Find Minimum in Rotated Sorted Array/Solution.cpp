#include <iostream>
#include <vector>

using namespace std;


class Solution {
public:
	// ±º‰∏¥‘”∂» O£®lg n)
	int findMin(vector<int> &num) {
		if (num.size() == 1)
			return num[0];
		int left = 0;
		int right = num.size() - 1;
		while (num[left] > num[right])
		{
			int mid = (left + right) / 2;
			if (num[mid] > num[right])
				left = mid + 1;
			else
				right = mid;
		}
		return num[left];
	}
};