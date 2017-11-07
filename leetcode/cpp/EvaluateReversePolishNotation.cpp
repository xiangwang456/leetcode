//
// Created by zhangqi on 2017/11/3.

// Time:  O(n)
// Space: O(1)

#include <stack>
#include <vector>
#include <string>

using namespace std;

class Solution {
public:
    int evalRPN(vector<string>& tokens) {
        if(tokens.empty()){
            return 0;
        }

        stack<int> nums;

        for (string token : tokens) {
           if(!isOperator(token)){
               nums.push(atoi(token.c_str()));
           } else{
               int num2 = nums.top();
               nums.pop();
               int num1 = nums.top();
               nums.pop();
               if(token == "+"){
                   nums.push(num1 + num2);
               }else if(token == "-"){
                   nums.push(num1 - num2);
               }else if(token == "*"){
                   nums.push(num1 * num2);
               } else{
                   nums.push(num1 / num2);
               }

           }

       }
        return nums.top();
    }

private:
    bool isOperator(string str){
        return str.size() == 1 && string("+-*/").find(str) != string::npos;
    }
};