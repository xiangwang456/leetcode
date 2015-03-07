class Solution:
    # @param board, a list of lists of 1 length string
    # @param word, a string
    # @return a boolean
    def exist(self, board, word):
        row = len(board)
        col = len(board[0])
        for i in range(row):
            for j in range(col):
                if board[i][j] == word[0]:
                    if self.dfs(board,i,j,word[1:]):
                        return True
        return False
    
    def dfs(self,board,row,col,word):
        if len(word) == 0:
            return True
        #up
        if row > 0 and board[row - 1][col] == word[0]:
            ch,board[row][col] = board[row][col],'#'
            if self.dfs(board,row - 1,col,word[1:]):
                return True
            board[row][col] = ch
        #down
        if row < len(board) -1 and board[row + 1][col] == word[0]:
            ch,board[row][col] = board[row][col],'#'
            if self.dfs(board,row + 1,col,word[1:]):
                return True
            board[row][col] = ch
        #left
        if col > 0 and board[row][col - 1] == word[0]:
            ch,board[row][col] = board[row][col],'#'
            if self.dfs(board,row,col - 1 ,word[1:]):
                return True
            board[row][col] = ch
        #right
        if col < len(board[0]) - 1 and board[row][col + 1] == word[0]:
            ch,board[row][col] = board[row][col],'#'
            if self.dfs(board,row,col + 1,word[1:]):
                return True
            board[row][col] = ch
        return False