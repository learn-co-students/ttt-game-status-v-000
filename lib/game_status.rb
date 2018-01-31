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

def won?(board)
  # you can't use won?(board) == false, because even though it's a falsey value, the value is nil
  WIN_COMBINATIONS.find{|win_combo| board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && board[win_combo[0]] != " "}
end

def full?(board)
  WIN_COMBINATIONS.all?{|complete| board[complete[0]] == "X" || board[complete[0]] == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end


def winner(board)
  if won?(board)
    indices = won?(board)
     # indices == [0,1,2]
     index = indices[0]
     # index == 0, one of the winning indexes
     board[index]
     # board[index] will return whatever token is at index 0 on the board, regardless if
 	# it's X or O
   end
 end
