# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]


def won?(board)
  WIN_COMBINATIONS.each do |win_combination| 
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    end
  end
  return false
end

def full?(board)
  !board.any?{|i| i == " "}
end

def draw?(board)
  if full?(board) && won?(board)
    false
  elsif full?(board) && !won?(board)
    true
  elsif !full?(board)
    false
  end
end

def over?(board)
  if draw?(board)
    true
  elsif full?(board) && won?(board)
    true
  elsif !full?(board) && won?(board)
    true
  elsif !full?(board)
    false
  end
end

def winner(board)
  puts "winner"
  if won?(board)
    board_index = won?(board)[0]
    puts "board_index == #{board_index}"
    won = board[board_index]
    puts "won == #{won}"
    if won == "X"
      "X"
    elsif board[board_index] == "O"
      "O"
    else
      nil
    end
  else
    nil
  end
end
 board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
 puts "#{winner(board)}"
