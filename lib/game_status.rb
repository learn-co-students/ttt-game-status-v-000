# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle columns
  [2,5,8], #right column
  [0,4,8], #left diagonal
  [2,4,6]  #right diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]
    # puts "#{win_index_1}, #{win_index_2}, #{win_index_3}"
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if [position_1, position_2, position_3].all? {|i| i == "X"}
      return combo
    elsif [position_1, position_2, position_3].all? {|i| i == "O"}
      return combo
    else
      false
    end
  end
  false
end

def full?(board)
  if board.all? {|index| !(index.nil? || index == " ")}
    true
  else
    false
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    if board[won?(board)[0]] == "O"
      "O"
    else
      "X"
    end
  else
    nil
  end
end
