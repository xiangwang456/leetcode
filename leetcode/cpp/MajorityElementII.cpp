//
// Created by zz on 2017/10/14.
// Time:  O(n)
// Space: O(1)

#include <vector>
#include <string>


using namespace std;

class Solution {
public:
    vector<int> majorityElement(vector<int> &nums) {
        vector<int> res;
        int m = 0, n = 0;
        int cm = 0, cn = 0;
        for (auto &num : nums) {
            if (m == num) {
                cm++;
            } else if (n == num) {
                cn++;
            } else if (cm == 0) {
                m = num;
                cm++;
            } else if (cn == 0) {
                n = num;
                cn++;
            } else {
                cm--;
                cn--;
            }
        }

        cm = cn = 0;

        for (auto &num : nums) {
            if (num == m) {
                cm++;
            } else if (num == n) {
                cn++;
            }
        }
        if (cm > nums.size() / 3) {
            res.push_back(m);
        }
        if (cn > nums.size() / 3) {
            res.push_back(n);
        }

        return res;

    }
};