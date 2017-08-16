# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)

    WIN_COMBINATIONS.each do |win_combination|

      win_index_1 = win_combination[0]
      win_index_2 = win_combination[1]
      win_index_3 = win_combination[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      #if position found in win combo, return position.
      if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
        winning_position = [win_index_1, win_index_2, win_index_3]
        return winning_position #returns the winning combo and exits the method using RETURN
      end
    end #end of DO

  false #FALSE if the game was not won, ie, game not started, game incompelete or game draw

end #end of DEF


#checks if board is full. if TRUE, board is full.
def full?(board)
  if board.include?(" ") == false #returns FALSE if the board is FULL.
    true
  end
end

#check for draws
def draw?(board)
  full?(board) == true && won?(board) == false ? true : false
end


#is the game over? Check for full board, draw, or game is won
def over?(board)
  if won?(board) != false
    puts "won board is not false"
  end

  if full?(board) == true || draw?(board) == true || won?(board) != false
    true
  end
end

#return winnter of the game

def winner(board)
  if won?(board) !=false
    winning_index = won?(board)

    if board[winning_index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end

end
