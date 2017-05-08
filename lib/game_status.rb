# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won(board)
  WIN_COMBINATIONS.detect do |combo|
        if (board[combo[0]]) == "X" && (board[combo[1]]) == "X" && (board[combo[2]]) == "X"
            return combo
        elsif (board[combo[0]]) == "O" && (board[combo[1]]) == "O" && (board[combo[2]]) == "O"
            return combo
        end
        false
    end
end


def full?(board)
  board.all? do |index|
    index != " "
  end
end

def draw?(board)
  if full?(board) && !(won?(board))
    return true
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    false
end
end

def winner(board)

  #Call the won? method and pass in board as an argument
  #Use any of the three returned indeces to get the winner from the board array
  #We return the winner
  my_winning_position = won?(board)
  if(my_winning_position != nil)
    board[my_winning_position[0]]
  else
    nil
  end
end
