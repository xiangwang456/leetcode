//
// Created by zz on 2017/10/9.
// Time : O(n)
// Space : O(1)

#include <vector>
#include <limits>

using namespace std;

class Solution {
public:
    int maxProfit(vector<int> &prices) {

        if (prices.empty()) {
            return 0;
        }


        int hold = numeric_limits<int>::min();
        int release = numeric_limits<int>::min();
        for (int price : prices) {
            hold = max(-price, hold);
            release = max(release, hold + price);
        }

        return release;
    }
};

