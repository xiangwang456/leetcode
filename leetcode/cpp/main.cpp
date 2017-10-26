//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include <string>
#include <limits>
#include <algorithm>
#include "ReplaceWords.cpp"

using namespace std;

int main() {
    Solution solu ;
    vector<string> dict = {"cat", "bat", "rat"};
    string s = "the cattle was rattled by the battery";
    cout << solu.replaceWords(dict, s) << endl;


}