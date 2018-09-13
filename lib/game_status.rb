require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# array containing all possible winning play combinations
WIN_COMBINATIONS = [
[0,1,2], #row-wins
[3,4,5],
[6,7,8],

[0,3,6], #column-wins
[1,4,7],
[2,5,8],

[0,4,8], #diagonal-wins
[2,4,6]

]


def won?(board)
  WIN_COMBINATIONS.each do |combo|

    if board[combo[0]] == board[combo[1]] && board[combo[2]] == board[combo[1]] && position_taken?(board, combo[0])

      return combo
    end
  end
  false
end


def full?(board)
  !board.any? { |i| i == " " || i == "" || i == nil }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board)
     combo = won?(board)
    board[combo[0]]
 #if won?(board)
  else
   nil
 end

end











#########################################################
=begin (making up stuff)

board(WIN_COMBINATIONS[0..2]) == "X"
board.each {|index|}
or maybe... board.each do |index| if index == "X" return WIN_COMBINATIONS end


=end



=begin
def won?(board)
  WIN_COMBINATIONS.each do |win|
    win = [0, 1, 2]
    if position_taken?(board, win[0..2]) == "X" or position_taken?(board, win[0..2]) == "O"
    end
  end
=end
