//
// Created by zhangqi on 2017/11/24.
//Time : O(n^2)
//Space : O(n)


#include <vector>
#include <c++/bitset>


using namespace std;

class Solution {
public:
    bool isValidSudoku(vector<vector<char>>& board) {
        for(int i = 0; i < 9; i++){
            if(withAnyDuplicate(board,i,i + 1,0, 9)){
                return false;
            }
        }

        for(int i = 0; i < 9; i++){
            if(withAnyDuplicate(board,0, 9, i, i + 1)){
                return false;
            }
        }


        for(int i = 0; i < 9; i += 3){
            for(int j = 0; j < 9; j += 3){
                if(withAnyDuplicate(board,i, i + 3, j, j + 3)){
                    return false;
                }
            }
        }
        return true;
    }

private:
    bool withAnyDuplicate(vector<vector<char>>& board, int rowStart, int rowEnd, int colStart, int colEnd){
        bitset<9> isPrsent;
        for(int i = rowStart; i < rowEnd; i++){
            for(int j = colStart; j < colEnd; j++){
                if(board[i][j] != '.'){
                    if(isPrsent[board[i][j] - '1']){
                        return true;
                    } else{
                        isPrsent.flip(board[i][j] - '1');
                    }
                }
            }
        }
        return false;
    }
};