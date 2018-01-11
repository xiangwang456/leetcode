my leetcode answers.  

updating...

## LinkedList

| # | title | Solution | Time | Space | Difficulty| Tag| Note |
|---|:---:|:---------|:-----|-------| ----------| ---| ---- |
|24|[Swap Nodes in Pairs]()|[C++]()|_O(n)_|_O(1)_|easy|||
|61|[Rotate List](https://leetcode.com/problems/rotate-list/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/RotateList.cpp)|_O(n)_|_O(1)_|easy||先变成循环链表再断开|
|82|[Remove Duplicates from Sorted List II](https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/RemoveDuplicatesfromSortedListII.cpp)|_O(n)_|_O(1)_|medium||把有重复的元素都删除|
|83|[Remove Duplicates from Sorted List](https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/)|[C++]()|_O(n)_|_O(1)_|easy||删除重复的结点，只保留一个|



## Tree
| # | title | Solution | Time | Space | Difficulty| Tag| Note |
|---|:---:|:---------|:-----|-------| ----------| ---| ---- |
|307|[Range Sum Query - Mutable](https://leetcode.com/problems/range-sum-query-mutable/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/RangeSumQuery.cpp)|_ctor :O(n)  ,update : O(logn) , sum : O(logn)_|_O(n)_|medium||线段树|
|24|[Longest Univalue Path](https://leetcode.com/problems/longest-univalue-path/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/LongestUnivaluePath.cpp)|_O(n)_|_O(h)_|easy||dfs|
|654|[Maximum Binary Tree](https://leetcode.com/problems/maximum-binary-tree/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/MaximumBinaryTree.cpp)|_O(n)_|_O(n)_|medium|||
|652|[Find Duplicate Subtrees](https://leetcode.com/problems/find-duplicate-subtrees/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/FindDuplicateSubtrees.cpp)|_O(n)_|_O(n)_|medium|||
|684|[Redundant Connection](https://leetcode.com/problems/redundant-connection/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/RedundantConnection.cpp)|_O(n)_|_O(n)_|medium|||

## Hash Table
| # | title | Solution | Time | Space | Difficulty| Tag| Note |
|---|:---:|:---------|:-----|-------| ----------| ---| ---- |
|1|[Two Sum](https://leetcode.com/problems/two-sum/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/TwoSum.cpp)|_O(n)_|_O(n)_|easy|||
|3|[Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/LongestSubstringWithoutRepeatingCharacters.cpp)|_O(n)_|_O(n)_|medium|||
|36|[Valid Sudoku](https://leetcode.com/problems/valid-sudoku/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/ValidSudoku.cpp)|_O(n^2)_|_O(n)_|medium|||
|159|[Longest Substring with At Most Two Distinct Characters](https://leetcode.com/problems/longest-substring-with-at-most-two-distinct-characters/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/LongestSubstringwithAtMostTwoDistinctCharacters.cpp)|_O(n)_|_O(n)_|hard|||
|202|[Happy Number](https://leetcode.com/problems/happy-number/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/HappyNumber.cpp)|_O(k)_|_O(k)_|easy|||
|323|[Number of Connected Components in an Undirected Graph](https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/NumberofConnectedComponentsinanUndirectedGraph.cpp)|_O(n)_|_O(n)_|medium|||
|356|[Line Reflection](https://leetcode.com/problems/line-reflection/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/LineReflection.cpp)|_O(n)_|_O(n)_|medium|||
|387|[First Unique Character in a String](https://leetcode.com/problems/first-unique-character-in-a-string/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/FirstUniqueCharacterinaString.cpp)|_O(n)_|_O(n)_|easy|||
|737|[Sentence Similarity II](https://leetcode.com/problems/sentence-similarity-ii/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/SentenceSimilarityII.cpp)|_O(n)_|_O(n)_|medium||并查集，字符串在map里的位置作为并查集的查询条件|
|734|[Sentence Similarity](https://leetcode.com/problems/sentence-similarity/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/SentenceSimilarity.cpp)|_O(n)_|_O(n)_|easy|||
|721|[Accounts Merge](https://leetcode.com/problems/accounts-merge/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/AccountsMerge.cpp)|_O(n)_|_O(n)_|medium||1. 并查集 2. email-name，email-id，set[id]-emails, name-emails|
|554|[Brick Wall](https://leetcode.com/problems/brick-wall/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/BrickWall.cpp)|_O(n)_|_O(n)_|medium||记录每一行右边界出现的次数，从长度减去它就是最少要穿过的数目|
|457|[4Sum II](https://leetcode.com/problems/4sum-ii/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/4SumII.cpp)|_O(n^2)_|_O(n^2)_|medium||统计前两个数组两两元素的和并统计次数，再和后两个进行比较|


## Math
| # | title | Solution | Time | Space | Difficulty| Tag| Note |
|---|:---:|:---------|:-----|-------| ----------| ---| ---- |
|13|[Roman to Integer](https://leetcode.com/problems/roman-to-integer/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/RomantoInteger.cpp)|_O(n)_|_O(1)_|easy|||
|12|[Integer to Roman](https://leetcode.com/problems/integer-to-roman/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/IntegertoRoman.cpp)|_O(n)_|_O(1)_|medium|||
|400|[Nth Digit](https://leetcode.com/problems/nth-digit/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/NthDigit.cpp)|_O(lgn)_|_O(1)_|easy|||


## Sort
| # | title | Solution | Time | Space | Difficulty| Tag| Note |
|---|:---:|:---------|:-----|-------| ----------| ---| ---- |
|88|[Merge Sorted Array](https://leetcode.com/problems/merge-sorted-array/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/MergeSortedArray.cpp)|_O(n)_|_O(1)_|easy||从后向前插入|
|147|[Insertion Sort List](https://leetcode.com/problems/insertion-sort-list/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/InsertionSortList.cpp)|_O(n)_|_O(n)_|medium||找到要插入位置的节点，再插入|
|75|[Sort Colors](https://leetcode.com/problems/sort-colors/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/SortColors.cpp)|_O(n)_|_O(1)_|medium||把数组分为三个部分，0 ，1，2 |
|88|[Merge Sorted Array]()|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/MergeSortedArray.cpp)|_O(n)_|_O(1)_|easy||从后向前遍历两个数组|
|148|[Sort List](https://leetcode.com/problems/sort-list/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/SortList.cpp)|_O(nlgn)_|_O(lgn)_|medium||先把两个链表拆成两个链表，递归两个指针合并两链表|
|179|[Largest Number](https://leetcode.com/problems/largest-number/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/.cpp)|_O(nlogn)_|_O(1)_|medium||通过将两个数字组合成一个字符串形式对数字按照askii进行排序，再将字符串依次组合成一个数字|
|274|[H-Index](https://leetcode.com/problems/h-index/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/HIndex.cpp)|_O(n)_|_O(n)_|medium||1、排序，找论文数大于引用数的 2、用一个数组记录引用数是0到n（大于n的记为n）之间被引用的文章有多少，再进行累加|
|347|[Top K Frequent Elements](https://leetcode.com/problems/top-k-frequent-elements/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/TopKFrequentElements.cpp)|_O(nlogn)_|_O(n)_|medium||按照元素的数量分成若干个捅，从后向前从捅中取元素|
|451|[Sort Characters By Frequency](https://leetcode.com/problems/sort-characters-by-frequency/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/SortCharactersByFrequency.cpp)|_O(n)_|_O(n)_|medium||与上题类似|
|692|[Top K Frequent Words](https://leetcode.com/problems/top-k-frequent-words/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/TopKFrequentWords.cpp)|_O(nlgn)_|_O(n)_|medium|||






## Two Pointers
| # | title | Solution | Time | Space | Difficulty| Tag| Note |
|---|:---:|:---------|:-----|-------| ----------| ---| ---- |
|19|[Remove Nth Node From End of List](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/RemoveNthNodeFromEndofList.cpp)|_O(n)_|_O(1)_|easy||快慢指针，快指针先走n步，再同时开始走|
|86|[Partition List](https://leetcode.com/problems/partition-list/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/PartitionList.cpp)|_O(n)_|_O(1)_|medium||双指针。用两个指针分别表示比x大和小的两个链表，最后将小表的尾指向大表的头|
|141|[Linked List Cycle](https://leetcode.com/problems/linked-list-cycle/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/LinkedListCycle.cpp)|_O(n)_|_O(1)_|easy||快慢指针|
|142|[Linked List Cycle II](https://leetcode.com/problems/linked-list-cycle-ii/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/LinkedListCycleII.cpp)|_O(n)_|_O(n)_|medium||fast在相遇点再走k步到达循环链表的起点，与从头开始走k步同一个位置|
|143|[Reorder List](https://leetcode.com/problems/reorder-list/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/ReorderList.cpp)|_O(n)_|_O(1)_|medium||1、快慢指针分拆链表 2、后半部分reverse 3、再合并两个链表|
|283|[Move Zeroes](https://leetcode.com/problems/move-zeroes/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/MoveZeroes.cpp)|_O(n)_|_O(1)_|easy||从前向后遍历，设置一个标记元素，如果不是零则和后面的元素交换并自增标记元素，是零则不自增，这样零的会跑到最后|
|287|[Find the Duplicate Number](https://leetcode.com/problems/find-the-duplicate-number/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/FindtheDuplicateNumber.cpp)|_O(n)_|_O(n)_|medium|||
|344|[Reverse String](https://leetcode.com/problems/reverse-string/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/ReverseString.cpp)|_O(n)_|_O(1)_|easy||前指针和后指针不断交换直到相遇|
|345|[Reverse Vowels of a String]()|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/ReverseVowelsofaString.cpp)|_O(n)_|_O(1)_|easy||细节:aeiou字符串弄成const string 2、比对时都用小写 |
|349|[Intersection of Two Arrays](https://leetcode.com/problems/intersection-of-two-arrays/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/IntersectionofTwoArrays.cpp)|_O(n + m)_|_O(n + m)_|easy||1、哈希法：将第一个数组放入set中，遍历第二个数据 2、对两个数组排序再同事比对|
|567|[Permutation in String](https://leetcode.com/problems/permutation-in-string/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/PermutationinString.cpp)|_O(n)_|_O(n)_|medium||利用哈希表将第一个字符串的的元素都存起来，再遍历第二个字符串，在第一个字符串长度大小的窗口里检查是否全部出现了哈希表里字符。注意字符串哈表使用vector<int> count(256)而不是vector<char>|


## Recursion
| # | title | Solution | Time | Space | Difficulty| Tag| Note |
|---|:---:|:---------|:-----|-------| ----------| ---| ---- |
|100|[Same Tree]()|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/SameTree.cpp)|_O(n)_|_O(h)_|easy||当都为空则停止迭代返回true，否则迭代|
|104|[Maximum Depth of Binary Tree]()|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/MaximumDepthofBinaryTree.cpp)|_O(n)_|_O(n)_|easy||注意停止条件|
|110|[Balanced Binary Tree](https://leetcode.com/problems/balanced-binary-tree/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/BalancedBinaryTree.cpp)|_O(n)_|_O(h)_|easy||左子树和右子树高度是否相差1|
|111|[Minimum Depth of Binary Tree](https://leetcode.com/problems/minimum-depth-of-binary-tree/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/MinimumDepthofBinaryTree.cpp)|_O(n)_|_O(h)_|easy|||
|129|[Sum Root to Leaf Numbers](https://leetcode.com/problems/sum-root-to-leaf-numbers/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/SumRoottoLeafNumbers.cpp)|_O(n)_|_O(h)_|medium||使用辅助函数，用0作为和 。停止条件：如果是空则return 0 ，如果左子树和右子树都不存在，则返回当前结点的值 ，其他情况递归左子树和右子树。|
|298|[Binary Tree Longest Consecutive Sequence](https://leetcode.com/problems/binary-tree-longest-consecutive-sequence/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/BinaryTreeLongestConsecutiveSequence.cpp)|_O(n)_|_O(h)_|medium|||
|669|[Trim a Binary Search Tree](https://leetcode.com/problems/trim-a-binary-search-tree/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/TrimaBinarySearchTree.cpp)|_O(n)_|_O(h)_|easy||如果当前结点值小于L或大于R，则递归返回右子树或左子树，再分别递归左子树和右子树|
|108|[Convert Sorted Array to Binary Search Tree](https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/ConvertSortedArraytoBinarySearchTree.cpp)|_O(n)_|_O(h)_|easy||二分法构建BST|
|98|[Validate Binary Search Tree](https://leetcode.com/problems/validate-binary-search-tree/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/ValidateBinarySearchTree.cpp)|_O(n)_|_O(h)_|medium||递归，设置上下边界的值，注意边界值设置成numeric_limits<long>::max() min() |
|105|[Construct Binary Tree from Preorder and Inorder Traversal](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/description/)|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/ConstructBinaryTreefromPreorderandInorderTraversal.cpp)|_O(n)_|_O(n)_|medium||构造一个map记录中序中的序号，从该序号以前是左子树，以后是右子树|
|1|[]()|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/.cpp)|_O(n)_|_O(n)_|medium|||


|1|[]()|[C++](https://github.com/zoo-keeper/leetcode/blob/master/leetcode/cpp/.cpp)|_O(n)_|_O(n)_|medium|||




