//
// Created by zhangqi on 2017/11/7.

// Time:  O(n)
// Space: O(1)

#include <stack>

using namespace std;

class MinStack {
public:

    void push(int number ) {
        if(elements_.empty()){
            elements_.push(0);
            stack_min_  = number ;
        } else{
            //存该元素和除该元素外和最小值的查
            elements_.push(static_cast<int64_t>(number ) - stack_min_);
            if(number  < stack_min_){
                stack_min_ = number ;
            }
        }
    }

    void pop() {
        auto diff = elements_.top();
        elements_.pop();
        if(diff < 0){
            stack_min_ -= diff;
        }
    }

    int top() {
        if(elements_.top() > 0){
            return elements_.top() + stack_min_;
        }else{
            return stack_min_;
        }
    }

    int getMin() {
        return stack_min_;
    }

private:
    stack<int64_t> elements_;
    int stack_min_;
};
