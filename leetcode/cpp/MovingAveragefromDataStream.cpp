//
// Created by zz on 2017/11/11.
// Time:  O(1)
// Space: O(k)

#include <queue>

using namespace std;

class MovingAverage {
public:
    MovingAverage(int size) : size_(size), sum_() {

    }

    double next(int val) {
        if (q_.size() >= size_) {
            sum_ -= q_.front();
            q_.pop();
        }
        q_.push(val);
        sum_ += val;
        return 1.0 * sum_ / q_.size();

    }

private:
    int size_;
    int sum_;
    queue<int> q_;
};