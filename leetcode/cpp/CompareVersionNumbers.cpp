//
// Created by zz on 2017/10/22.
//Time : O(n )
//Space : O(1)

#include <string>

using namespace std;

class Solution {
public:
    int compareVersion(string version1, string version2) {
        for (int i = 0, j = 0; i < version1.size() || j < version2.size(); i++, j++) {
            int v1 = 0, v2 = 0;
            while (i < version1.size() && version1[i] != '.') {
                v1 = v1 * 10 + (version1[i++] - '0');
            }

            while (j < version2.size() && version2[j] != '.') {
                v2 = v2 * 10 + (version2[j++] - '0');
            }

            if (v1 != v2) {
                return v1 > v2 ? 1 : -1;
            }
        }
        return 0;
    }
};