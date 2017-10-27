//
// Created by zz on 2017/10/26.
//

// Time:  O(n)
// Space: O(t), t is the number of nodes in trie

#include <string>
#include <unordered_map>
#include <vector>

using namespace std;


class Solution {
public:
    string replaceWords(vector<string> &dict, string sentence) {
        TrieNode node;
        for(string &word : dict){
            node.Insert(word);
        }
        string ans;
        TrieNode *curr = &node;
        //这个是先把字符加进去，再移动指针，所以当指针指向的节点的isString == true 时已经把改元素加进去了
        // 不加的情况：curr 不为空且curr->isString == true

        for(char ch : sentence){
            if(ch == ' ' || !curr || curr->isString == false ){
                ans += ch;
            }
            if(ch == ' '){
                curr = &node;
            }else if(curr && curr->isString == false){
                curr = curr->leaves[ch];
            }
        }
        return ans;
    }

private:
    struct TrieNode{
        bool isString = false;
        unordered_map<char, TrieNode *> leaves;

        void Insert(string str){
            auto *p = this;
            for(char ch : str){
                if(p->leaves.find(ch) == leaves.cend() ){
                    p->leaves[ch] = new TrieNode;
                }
                p = p->leaves[ch];
            }
            p->isString = true;
        }

        ~TrieNode(){
            for(auto &leaf : leaves){
                if(leaf.second){
                    delete leaf.second;
                }
            }
        }
    };
};