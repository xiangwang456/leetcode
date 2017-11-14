//
// Created by zhangqi on 2017/11/14.
// Time:  O(nlogn) for total n addNums, O(logn) per addNum, O(1) per findMedian.
// Space: O(n), total space

#include <vector>
#include <functional>
#include <queue>


using namespace std;

class MedianFinder {
public:
    /** initialize your data structure here. */
    MedianFinder() {

    }

    void addNum(int num) {
        if(maxHeap.empty() || num > maxHeap.top()){
            minHeap.push(num);
            if(minHeap.size() > maxHeap.size() + 1){
                maxHeap.push(minHeap.top());
                minHeap.pop();
            }
        } else{
            maxHeap.push(num);
            if(maxHeap.size() > minHeap.size()){
                minHeap.push(maxHeap.top());
                maxHeap.pop();
            }
        }
    }

    double findMedian() {
        return  maxHeap.size() == minHeap.size() ? (maxHeap.top() + minHeap.top()) / 2.0 : minHeap.top();
    }

private:
    //大顶堆，用来存储目前为止最小的一半数，堆顶是这一半数中最大的数
    priority_queue<int, vector<int>, greater<int>> minHeap;
    //小顶堆，用来存储目前为止最大的一半数，堆顶是这一半数中最小的数
    priority_queue<int, vector<int>, less<int>> maxHeap;
};
