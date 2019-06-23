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
  WIN_COMBINATIONS.each do |win_combination|
        win_index_1 = win_combination[0]
        win_index_3 = win_combination[2]
        win_index_2 = win_combination[1]

        position_1 = board[win_index_1]
        position_2 = board[win_index_2]
        position_3 = board[win_index_3]

      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination
      end
    end
    false
  end

def full?(board)

  if board.any?{|index| index == " "}
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  elsif full?(board) != true && won?(board) != false
    return false
  elsif WIN_COMBINATIONS.any? {|combo| combo == won?(board)}
    return false
  end
end

def over?(board)
  if draw?(board)
    return true
  elsif full?(board)
    return true
  elsif WIN_COMBINATIONS.any? {|combo| combo == won?(board)}
    return true
  end
end

def winner(board)
  if WIN_COMBINATIONS.any? {|combo| combo == won?(board)}
  winner = won?(board)
  return "#{board[winner[1]]}"
end
end
