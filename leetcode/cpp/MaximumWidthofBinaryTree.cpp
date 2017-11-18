//
// Created by zz on 2017/11/18.
// O(n)
//

#include "TreeNode.h"
#include <vector>

using namespace std;

class Solution {
public:
    int widthOfBinaryTree(TreeNode *root) {
        vector<int> leftMosts;
        return dfs(root, 1, 0, leftMosts);
    }

private:
    int dfs(TreeNode *node, int id, int depth, vector<int> &leftMosts) {
        int result = 0;
        if (node == nullptr) {
            return 0;
        }

        //leftMosts中只存储每一层最左边序号的节点，每层只存储一个
        if (depth >= leftMosts.size()) {
            leftMosts.push_back(id);
        }
        //每层的最大宽度是最右边的节点序号减去最左边节点序号 + 1
        result = id - leftMosts[depth] + 1;
        result = max(result, dfs(node->left, id * 2, depth + 1, leftMosts));
        result = max(result, dfs(node->right, id * 2 + 1, depth + 1, leftMosts));
        return result;
    }

};