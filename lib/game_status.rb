require 'pry'
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
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]



# defines won method, which is supposed to tell you the winning combo if there's a winning
# and just says false if not. so it should give false for a winning board, and has
# to be able to iterate over the board to check it.
def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] != " " && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
      return combo
    end
  end
  false
end


#array methods
# generally for now just call methods with arguments

def full?(board)
  board.all? {|letter| letter == "X" || letter == "O"}
end

def draw?(board)
  if full?(board) && won?(board) == false
    # if board array is full at all posiotions, but also returns false for won Method
    # then its a draw.
    return true
  elsif won?(board) == false
      false
  end

end


def over?(board)
    if full?(board) && won?(board) == false
      true
    elsif full?(board) && won?(board)
      true
    end
end

def winner(board)
  if won?(board) == false
    nil
  else
    x = won?(board)
    board[x[0]]
  end 
end
