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
  x = WIN_COMBINATIONS.select do |combo|

  win_index_1 = combo[0]
  win_index_2 = combo[1]
  win_index_3 = combo[2]

  position_1 = board[win_index_1]  
  position_2 = board[win_index_2]  
  position_3 = board[win_index_3] 

  if position_1 == "X" && position_2 == "X" && position_3 == "X" or
    position_1 == "O" && position_2 == "O" && position_3 == "O"
    #
    return combo  
  end
  end

  if x == []
    return false
  end

  x

end

def full?(board)
  if board.include?(" ")
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) and !won?(board)
    return true
  else
    return false
  end

end

def over?(board)
  if draw?(board) or won?(board) or full?(board)
    return true
  end
  false

end

def winner(board)

  if over?(board) and won?(board)
    combo = won?(board)

    return board[combo[0]]
 end

end