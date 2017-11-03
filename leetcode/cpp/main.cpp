//
// Created by zz on 2017/9/26.
//



#include <vector>
#include <iostream>
#include <string>
#include <limits>
#include <algorithm>
#include "TreeNode.h"
#include "SymmetricTree.cpp"

using namespace std;

int main() {
    Solution solu ;
    TreeNode node1 = TreeNode{0};
    TreeNode node2 = TreeNode{1};
    TreeNode node3 = TreeNode{1};
    node1.left = &node2;
    node1.right = &node2;

    cout << solu.isSymmetric(&node1);

}