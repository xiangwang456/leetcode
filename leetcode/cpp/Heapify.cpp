//
// Created by zz on 2019/2/23.
//

// Time:  O(n)
// Space: O(n)

#include <vector>
using namespace std;

class Solution {
public:
    void heapify(vector<int> &A){
        for (int i = A.size() / 2; i >= 0; --i) {
            siftDown(A,i);
        }
    }

    void siftDown(vector<int>& nums, int index){
        while (index < nums.size()){
            int minIndex = index;
            int lsonIndex = lson(index);
            int rsonIndex = rson(index);

            if (lsonIndex < nums.size() && nums[lsonIndex] < nums[minIndex]){
                minIndex = lson(index);
            }

            if (rsonIndex < nums.size() && nums[rsonIndex] < nums[minIndex]){
                minIndex = rsonIndex;
            }
            if (minIndex == index){
                break;
            }

            swap(nums[index], nums[minIndex]);
            index = minIndex;
        }
    }

    int parent(int index){
        return (index - 1) / 2;
    }

    int lson(int index){
        return 2 * index + 1;
    }

    int rson(int index){
        return 2 * index + 2;
    }
};