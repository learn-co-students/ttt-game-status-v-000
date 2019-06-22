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
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


def won?(board)
  WIN_COMBINATIONS.each do |win_move|
  win_index_1 = win_move[0]
  win_index_2 = win_move[1]
  win_index_3 = win_move[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_move
  end
  end
else
  false
end

  def full?(board)
    !board.any? { |x| x == " " }
  end


  def draw?(board)
    if  !won?(board) && full?(board)
    puts "the game has been won"
      return true
    else
      puts "the game has not been won"
  return false
    end
  end

def over?(board)
if  full?(board) || won?(board) || draw?(board)
  puts "THE GAME IS OVER"
  return true
else
  puts "the game is not over"
  return false
end
end

  def winner(board)
    if winner = won?(board)
      board[winner.first]
    end
  end
