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
  [2,4,6],
  [0,4,8]
]

def won?(board)
  if board.none? {|i| i == "X" || i == "O"}
    false
  else
    WIN_COMBINATIONS.each do |win_combination|
      position_1 = win_combination[0]
      position_2 = win_combination[1]
      position_3 = win_combination[2]
      if board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X" || board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"
        return win_combination
      end
    end
  end
  false
end

def full?(board)
  board.none? {|i| i == " "}
end

def draw?(board)
  if won?(board) != false
    false
  else
    full?(board)
  end
end

def over?(board)
  if full?(board) || won?(board)
    true
  else
    draw?(board)
  end
end


def winner(board)
  combo = won?(board)
  if combo == false
    nil
  elsif combo.all? {|index| board[index] == "X"}
    return "X"
  else combo.all?{|index| board[index] == "O"}
    return "O"
  end
end
