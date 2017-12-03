//
// Created by zz on 2017/12/3.
// Time:  O(n)
// Space: O(n)

#include <vector>

// 埃拉托斯特尼筛选法

using namespace std;


class Solution {
public:
    int countPrimes(int n) {
        if (n < 2) {
            return 0;
        }

        vector<bool> prime(n, true);
        for (int i = 2; i * i < n; i++) {
            if (prime[i]) {
                for (int j = i + i; j < n; j += i) {
                    prime[j] = false;
                }
            }
        }
        int ans;
        for (int i = 2; i < n; i++) {
            if (prime[i]) {
                ans++;
            }
        }
        return ans;
    }
};