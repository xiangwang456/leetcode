//
// Created by zz on 2017/11/7.
// Time:  O(n)
// Space: O(1)

#include <stack>


using namespace std;

class MyQueue {
public:


    /** Push element x to the back of queue. */
    void push(int x) {
        a_.push(x);
    }

    /** Removes the element from in front of queue and returns that element. */
    int pop() {
        int ans = peek();
        b_.pop();
        return ans;
    }

    /** Get the front element. */
    int peek() {
        if (b_.empty()) {
            while (!a_.empty()) {
                b_.push(a_.top());
                a_.pop();
            }
        }
        if (b_.empty()) {
            throw length_error("empty queue");
        }
        return b_.top();
    }

    /** Returns whether the queue is empty. */
    bool empty() {
        return a_.empty() && b_.empty();
    }

private:
    stack<int> a_, b_;
};
