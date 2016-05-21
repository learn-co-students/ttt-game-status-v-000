
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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

WIN_COMBINATIONS.each do |combination|
  position_1 = board[combination[0]]
  position_2 = board[combination[1]]
  position_3 = board[combination[2]]

  if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"
    return combination
  end
end
false
end

def full?(board)
board.none? {|board_element| board_element == " "}
end

def draw?(board)
  board.each do |board_element|
  if full?(board) && !won?(board)
    return true
  end
end
false
end

def over?(board)
  board.each do |board_element|
    if full?(board) || won?(board) || draw?(board)
      return true
    end
  end
  false
end

def winner(board)
  WIN_COMBINATIONS.each do |combination|
    position_1 = board[combination[0]]
    position_2 = board[combination[1]]
    position_3 = board[combination[2]]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return "O"
    end
  end
  nil
end
