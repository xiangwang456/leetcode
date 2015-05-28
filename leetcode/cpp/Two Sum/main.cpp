#include "Two Sum.cpp";

int main()
{
	cout << "=======================begin===================" << endl;
	vector<int> nums;
	nums.push_back(2);
	nums.push_back(7);
	nums.push_back(11);
	nums.push_back(15);
	Solution sol;
	vector<int> res = sol.twoSum(nums, 9);
	for (auto it = res.begin(); it != res.end(); it++)
		cout << *it << endl;

	cout << "=======================end=====================";
	int end;
	cin >> end;
}