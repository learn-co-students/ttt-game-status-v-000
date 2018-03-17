board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]


WIN_COMBINATIONS = [


  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  # ETC, an array for each win combination
]

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    tokens = [board[win_combination[0]],
              board[win_combination[1]],
              board[win_combination[2]]]
    tokens_X = tokens.all?{ |token| token == "X" }
    tokens_O = tokens.all?{ |token| token == "O" }
    return win_combination if tokens_X || tokens_O
  end
  false
end

def full?(board)
  board.none?{|token| token == " " }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || draw?(board) || won?(board)
end

def winner(board)
  win_combination = won?(board)
  if win_combination
    board[win_combination[0]]
  end
end