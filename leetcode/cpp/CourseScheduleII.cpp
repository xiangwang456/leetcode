//
// Created by zhangqi on 2018/2/1.
//

// Time: O(|V| + |E|)
// Space: O(|E| )

#include <vector>
#include <queue>

using namespace std;
class Solution {
public:
    vector<int> findOrder(int numCourses, vector<pair<int, int>>& prerequisites) {

        vector<int> result ;
        //图的表示：二维数组，当前节点可以抵达的下一节点
        vector<vector<int> > graph(numCourses, vector<int>(0));
        //每个节点的入度
        vector<int> in(numCourses,0);
        //初始化图和入度
        for(const auto pair : prerequisites){
            in[pair.first]++;
            graph[pair.second].push_back(pair.first);
        }
        //将入度为０的节点加入队列　　
        queue<int> que;
        for(int i = 0; i < numCourses; i++){
            if(in[i] == 0){
                que.push(i);
                result.push_back(i);
            }
        }
        //bfs遍历图
        while (!que.empty()){
            int prev = que.front();
            que.pop();
            for(auto next : graph[prev]){
                if(--in[next] == 0){
                    que.push(next);
                    result.push_back(next);
                }
            }
        }

        for(auto inDegree : in){
            if(inDegree > 0)
                return {};
        }
        return  result;
    }
};