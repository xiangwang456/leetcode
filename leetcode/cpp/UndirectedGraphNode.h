//
// Created by zhangqi on 2018/2/1.
//

#ifndef LEETCODE_UNDIRECTEDGRAPHNODE_H
#define LEETCODE_UNDIRECTEDGRAPHNODE_H

#include <vector>


struct UndirectedGraphNode {
    int label;
    std::vector<UndirectedGraphNode*> neighbors;

    UndirectedGraphNode(int x) :label(x) {}
};


#endif //LEETCODE_UNDIRECTEDGRAPHNODE_H
