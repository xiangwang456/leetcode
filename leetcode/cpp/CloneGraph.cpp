//
// Created by zhangqi on 2018/1/31.
// Time:  O(n)
// Space: O(n)

#include "UndirectedGraphNode.h"
#include <queue>
#include <unordered_map>

using namespace std;

class Solution {
public:
    UndirectedGraphNode *cloneGraph(UndirectedGraphNode *node) {
        if(node == nullptr){
            return node;
        }
        unordered_map<UndirectedGraphNode*, UndirectedGraphNode*> nodeMap;
        queue<UndirectedGraphNode *> que;
        UndirectedGraphNode *nodeCopy = new UndirectedGraphNode(node->label);

        que.emplace(node);
        nodeMap[node] = nodeCopy;
        while (!que.empty()){
            UndirectedGraphNode *curr = que.front();
            que.pop();

           for(UndirectedGraphNode *neighbour : curr->neighbors){
               if(nodeMap.count(neighbour) == 0){
                   // 新节点，不是其他节点的neighbour
                   UndirectedGraphNode *newNeibhour = new UndirectedGraphNode(neighbour->label);
                   nodeMap[neighbour] = newNeibhour;   //将这个没有访问过的节点和拷贝节点放到map中
                   que.emplace(neighbour);  //bfs放入队列
                   nodeMap[curr]->neighbors.push_back(newNeibhour);  //copy节点的neighbour

               } else{
                   nodeMap[curr]->neighbors.push_back(nodeMap[neighbour]);
               }
           }

        }
        return nodeCopy;
    }
};