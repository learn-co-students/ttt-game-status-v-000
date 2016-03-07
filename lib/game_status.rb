# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top Row
  [0,3,6], #Left Row
  [2,5,8], #Right Row
  [6,7,8], #Bottom Row
  [3,4,5], #Midleft-Midright
  [1,4,7], #Topmid-Botmid
  [0,4,8], #Top-Left-Bottom-Right Diagonal
  [2,4,6] #Top-Right-Bottom-Left Diagonal
]

def won?(board)
  WIN_COMBINATIONS.any? do |wincombos|
    if (board[wincombos[0]] == "X" || board[wincombos[0]] == "O") && board[wincombos[0]] == board[wincombos[1]] && board[wincombos[1]] == board[wincombos[2]]
      return wincombos
    end
  end
end

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end


def full?(board)
  board.all? do |fullness|
    if fullness == "X" || fullness == "O"
      true
    end
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  end
end
