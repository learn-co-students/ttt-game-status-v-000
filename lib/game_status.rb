# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]]

#check a tic tac toe board and return true if there is a win and false if not
#accept a board as an argument and return false/nil if there is no win combination present in
#the board and return the winning combination indexes as an array if there is a win
def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination # return the win_combination indexes that won.
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination # return the win_combination indexes that won.
      else
        false
      end
    end
  return false
end

#accept a board and return true if every element in the board contains either an "X" or an "O"
#return false if there is an available position and true if there is not.
def full?(board)
  board.all? do |position|
    if position == "X" || position == "O"
      true
    else position == " "
      false
    end
  end
end

#accepts a board and returns true if the board has not been won and is full
#and false if the board is not won and the board is not full, and false if the board is won.
#You should be able to compose this method solely using the methods you used above with some ruby logic
def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
    false
  else won?(board)
    false
  end
end

#accepts a board and returns true if the board has been won, is a draw, or is full.
#You should be able to compose this method solely using the methods you used above with some ruby logic
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

#accept a board and return the token, "X" or "O" that has won the game given a winning board.
#method can be greatly simplified by using the methods and their return values you defined above
def winner(board)
  winning_combination = won?(board)

  if won?(board)
    winning_index = winning_combination[0]
    winning_token = board[winning_index]
    return winning_token
  else
    nil
  end
end
