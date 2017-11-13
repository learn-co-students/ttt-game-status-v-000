# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.find do|w_combination|
    position_taken?(board, w_combination[1]) && board[w_combination[0]]==board[w_combination[1]] && board[w_combination[1]]==board[w_combination[2]]
    end
end

def full?(board)
  board.none? {|position| position=="" ||position==" "}
end

def draw?(board)
   !won?(board) && full?(board)
end

def over?(board)
  draw?(board) ||won?(board)
end

def winner(board)
  if won?(board)
    board[won?(board)[1]]
end
end
