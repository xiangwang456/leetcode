//
// Created by zz on 2017/11/26.
//

#include <cmath>
#include <unordered_set>

using namespace std;

class Solution {
public:
    bool isHappy(int n) {
        unordered_set<int> visited;
        while (n != 1 && !visited.count(n)) {
            visited.insert(n);
            n = nextNum(n);
        }
        return n == 1;
    }

private:
    int nextNum(int n) {
        int sum = 0;
        while (n) {
            sum += pow(n % 10, 2);
            n = n / 10;
        }
        return sum;
    }
};