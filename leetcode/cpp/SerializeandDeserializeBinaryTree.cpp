//
// Created by zhangqi on 2017/11/16.
//
#include <string>
#include <sstream>
#include "TreeNode.h"

using namespace std;

class Codec {
public:

    // Encodes a tree to a single string.
    string serialize(TreeNode* root) {
        ostringstream out;
        serializeHelper(root,out);
        return out.str();
    }

    // Decodes your encoded data to tree.
    TreeNode* deserialize(string data) {

        istringstream in(data);
        return deserializeHelper(in);
    }

private :
    void serializeHelper(TreeNode *root, ostringstream &out){
        if(!root){
            out << "# ";
        } else{
            out << root->val << " ";
            serializeHelper(root->left, out);
            serializeHelper(root->right, out);
        }

    }

    TreeNode * deserializeHelper(istringstream &in){
        string val;
        in >> val;
        if(val == "#"){
            return nullptr;
        } else{
            TreeNode *tree = new TreeNode(stoi(val));
            tree->left = deserializeHelper(in);
            tree->right = deserializeHelper(in);
            return tree;
        }

    }
};