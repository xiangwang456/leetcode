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


