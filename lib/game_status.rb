require 'pry'

WIN_COMBINATIONS = [
 [0,1,2],
 [0,3,6],
 [0,4,8],
 [1,4,7],
 [2,4,6],
 [2,5,8],
 [3,4,5],
 [6,7,8]
]

    def won?(board)
      WIN_COMBINATIONS.detect do |combo|
        (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X") || (board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
      end
          end

    def full?(board)
      board.all? do |pos|
    if pos == "X" || pos == "O"
        true
      end
    end
  end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
 winning_combo = won?(board)
 if winning_combo
   return board[winning_combo[0]]
 else
  nil
 end
end

# def winner(board)
#   winning_combo = won?(board)
# if (board[winning_combo[0]] == "X" && board[winning_combo[1]] == "X" && board[winning_combo[2]] == "X")
#     return "X"
#   elsif (board[winning_combo[0]] == "O" && board[winning_combo[1]] == "O" && board[winning_combo[2]] == "O")
#       return "O"
# else
#    nil
# end
# end

#def winner(board)
#  winning_combo = won?(board)
#  if winning_combo
#    board[winning_combo[0]]
#  else
#    nil
#  end
#end
