#include <iostream>
#include <vector>
#include <numeric>
using namespace std;

class Solution
{
public:
       int singleNumber(vector<int>& nums) {
        return accumulate(nums.cbegin(), nums.cend(),
                          0, bit_xor<int>());
    }
};


int main()
{
	Solution solu;

	vector<int> nums;
	nums.push_back(1);
	nums.push_back(2);
	nums.push_back(1);
	nums.push_back(3);
	nums.push_back(2);
	
	cout<<solu.singleNumber(nums);
	
} 