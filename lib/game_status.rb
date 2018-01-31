# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[2,4,6],[0,4,8]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination
    end
  end
return false
end

#Checks to see if the board is full.
def full?(board)
  board.all? {|token| token == "O" || token == "X"}
end

#Checks for draw.
def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  elsif full?(board) == false && won?(board) == false
    false
  elsif won?(board) == false
    false
  else
    false
  end
end

#Checks to see if the game is over.
def over?(board)
  full?(board) || won?(board) || draw?(board)
end

#Displays the winner.
def winner(board)
  if won?(board)
    token_1 = won?(board)[0]
    token_2 = won?(board)[1]
    token_3 = won?(board)[2]

    if (board[token_1] == "X" && board[token_2] == "X" && board[token_3] == "X")
      return "X"
    elsif (board[token_1] == "O" && board[token_2] == "O" && board[token_3] == "O")
      return "O"
    end
  end
end
