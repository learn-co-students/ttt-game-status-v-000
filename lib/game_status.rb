require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
    [0,1,2], #Top row
    [3,4,5], #Middle row
    [6,7,8], #Bottom row
    [0,3,6], #1st vertical
    [1,4,7], #2nd vertical
    [2,5,8], #3rd vertical
    [0,4,8], #diagonal
    [2,4,6]  #diagonal
  ]

def won?(board)
  #winner = []
  #if board = empty return false
  #if board is a draw return false
=begin
  empty_board = board.all? {|x| x == " "}
  if empty_board
    return false
=end
 WIN_COMBINATIONS.each do |win_index|
   #if board == true#empty_board || full?(board)
   #if board[win_index[0]] == board[win_index[1]] && board[win_index[0]] == board[win_index[2]]
     #return win_index
   #else
  position_1 = board[win_index[0]]
  position_2 = board[win_index[1]]
  position_3 = board[win_index[2]]

  if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      #win_index
  #!winner.nil?
    return win_index

  end

  end
 false
    #win_index.all? {|value| board[value] == board[value]}
    #winner = win_index
  #winner
end


def full?(board)
  board.all? {|full_board| full_board == "X" || full_board == "O"}

end

def draw?(board)
  if won?(board) == false && full?(board) == true
     true
  end

end

def over?(board)
  if draw?(board)
    true
  elsif won?(board) && full?(board)
    true
  elsif won?(board) && !full?(board)
    true
  #elsif !won?(board) && !full?(board)
    #false
  end
end

def winner(board)
  #token = board[0] == board[1]
  value = won?(board)
  #binding.pry
  if value
    board[value[0]]
  else
    nil
  end
end



  #http://instruction.learn.co/video_lectures
