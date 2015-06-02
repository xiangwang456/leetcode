#include <iostream>
#include <vector>

using namespace std;
class Solution {
public:
	int findMin(vector<int> &num) {
		if (num.size() == 1)
			return num[0];
		int left = 0;
		int right = num.size() - 1;
		while (num[left] >= num[right])
		{
			int mid = (left + right) / 2;
			if (num[mid] > num[right])
				left = mid + 1;
			else if (num[mid] < num[right])
				right = mid;
			else
				right--;
		}

		return num[left];
	}
};