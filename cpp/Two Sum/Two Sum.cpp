#include <iostream>
#include <unordered_map>
#include <vector>

using namespace std;

class Solution {
public:
	vector<int> twoSum(vector<int> &numbers, int target) {
		unordered_map<int, int> mapping;
		for (int i = 0; i < numbers.size(); i++)
			mapping[numbers[i]] = i;
		vector<int> result;
		for (int i = 0; i < numbers.size(); i++)
		{
			const int gap = target - numbers[i];
			if (mapping.find(gap) != mapping.end() && mapping[gap]>i)
			{
				result.push_back(i + 1);
				result.push_back(mapping[gap] + 1);
				break;
			}
		}
		return result;
	}
};

