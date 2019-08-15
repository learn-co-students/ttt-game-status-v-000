def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
   [0 , 1, 2],
   [3 , 4, 5],
   [6 , 7, 8],
   [0 , 3, 6],
   [1 , 4, 7],
   [2 , 5, 8],
   [0 , 4, 8],
   [6 , 4, 2]
]

def won? (board)
   WIN_COMBINATIONS.each do |pos1, pos2, pos3|
      if board[pos1] == board[pos2] && board[pos2] == board[pos3] && position_taken?(board, pos1)
         return [pos1, pos2, pos3]
      end
   end
   return false
end

def full?(board)
   board.each do |i|
      if (i.nil? || i == " ")
         return false
      end
   end
   return true
end

def draw?(board)
   (!won?(board) && full?(board))? true : false
end

def over?(board)
   (draw?(board) || won?(board) || full?(board))? true : false
end

def winner(board)
   winner_token = won?(board)
   (winner_token)? board[winner_token[0]] : nil
end
