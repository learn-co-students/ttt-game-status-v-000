# Helper Method

boardempty = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
boardwonX = ["X", "O", "X", " ", "X", "O", "X", " ", "O"]
boardwonO = ["O", "X", "O", " ", "O", "X", "O", " ", "X"]
boarddraw = ["X", "O", "X", "X", "O", "O", "O", "X", "X" ]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  # return board
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # middle column
  [2,5,8],  # right column
  [0,4,8],  # left diagnonal
  [2,4,6]  # right diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board,combo[0])
  end
end

def full?(board)
  board.all? do |cell|
    cell == "X" || cell == "O"
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) ? true : false
end

def winner(board)
  if won?(board)
    token = won?(board)[0]
    winner = board[token]
    puts "The winner is player #{winner}"
    winner
  elsif won?(board) == nil
     puts "Continue playing"
     nil
  end
end
