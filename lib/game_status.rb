# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row win
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)

#WIN_COMBINATIONS.find do |el|
  #board[el[0]] == board[el[1]] && board[el[1]] == board[el[2]] && board[el[0]] != " "
#end

WIN_COMBINATIONS.each do |el| #[0, 1 ,2]

  win_position_1 = el[0]
  win_position_2 = el[1]
  win_position_3 = el[2]

    if board[win_position_1] == "X" && board[win_position_2] == "X" && board[win_position_3] == "X"
      return el
    elsif board[win_position_1] == "O" && board[win_position_2] == "O" && board[win_position_3] == "O"
      return el
    end
  end
  nil
end

def full?(board)
  board.none?{|el| el == " " || el == "" || el == nil}
end

def draw?(board)
  if full?(board) == true && won?(board) == nil
    true
  end
end

def over?(board)
  if full?(board) == true || won?(board) != nil || draw?(board) == true
    true
  end
end

def winner(board)
  if won?(board) != nil
    (board[won?(board)[0]])
  end
end
