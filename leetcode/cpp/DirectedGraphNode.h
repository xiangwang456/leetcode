//
// Created by zz on 2019/2/18.
//

#ifndef DIRECTEDGRAPHNODE
#define DIRECTEDGRAPHNODE

#include <vector>
using namespace std;

struct DirectedGraphNode {
      int label;
      vector<DirectedGraphNode *> neighbors;
      DirectedGraphNode(int x) : label(x) {};
  };

#endif
