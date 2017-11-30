# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant (capital letters make constant)
   WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
def won?(board)
   WIN_COMBINATIONS.each_with_index do |win_combination, index|
    if position_taken?(board, win_combination[0]) == true
      if board[win_combination[0]] == board[win_combination[1]] &&
       board[win_combination[1]] == board[win_combination[2]]
       return WIN_COMBINATIONS[index]
          end
          end
          end
      return false
     end

def full?(board)
board.none? do | index |
  index == " " || index == " "
end
end

def draw?(board)
won?(board) == false && full?(board) == true
end


def over?(board)
draw?(board) == true || won?(board) != false
end


def winner(board)
if won?(board) != false
  winner = board[won?(board)[0]]
end
end
