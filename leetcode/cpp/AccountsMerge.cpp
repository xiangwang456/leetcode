//
// Created by zhangqi on 2017/11/29.
//Time : O(n)
//Space : O(n)

#include <string>
#include <unordered_map>
#include <vector>
#include <set>


using namespace std;

class Solution {
public:
    vector<vector<string>> accountsMerge(vector<vector<string>>& accounts) {
        UnionFind uf;
        unordered_map<string, string> emailToName;
        unordered_map<string, int> emailToId;
        for(const auto & account : accounts){
            const auto& name = account[0];
            for(int i = 1; i < account.size(); i++){
                if(!emailToName.count(account[i])){
                    emailToName[account[i]] = name;
                    emailToId[account[i]] = uf.getId();
                }
                uf.unionSet(emailToId[account[1]], emailToId[account[i]]);
            }
        }

        //loopup : id, eamil1,email2..
        unordered_map<int, set<string>> loopup;
        for(const auto& emailAndName : emailToName){
            loopup[uf.findSet(emailToId[emailAndName.first])].emplace(emailAndName.first);
        }


        vector<vector<string>> ans;
        for(const auto& kv : loopup){
            //根据eami找到对应的name，所有的相同id对应的肯定是同一个名称，取第一个就可以
            string name = emailToName[*kv.second.begin()];
            vector<string> item{name};
            for(const auto& email : kv.second){
                item.emplace_back(email);
            }
            ans.emplace_back(item);
        }
        return ans;
    }

private:
    class UnionFind{
    public:
        int getId(){
            set_.emplace_back(set_.size());
            return set_.size() - 1;
        }

        int findSet(int x){
            if(x != set_[x]){
                set_[x] = findSet(set_[x]);
            }
            return set_[x];
        }

        void unionSet(const int x, const int y){
            int xRoot = findSet(x), yRoot = findSet(y);
            if(xRoot != yRoot){
                set_[min(xRoot, yRoot)] = max(xRoot, yRoot);
            }
        }



    private:
        vector<int> set_;
    };
};