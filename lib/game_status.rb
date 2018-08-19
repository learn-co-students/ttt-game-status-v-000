# Helper Method
def position_taken?(board, index)
    !(board[index].nil? || board[index] == " ")
  end
  
  # Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5],  # Middle row
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  def won?(board)
  WIN_COMBINATIONS.each do |combo| #iterate over WIN_COMBINATIONS
    position_1 = board[combo[0]]
    position_2 = board[combo[1]]
    position_3 = board[combo[2]]
  if position_1 == position_2 && position_2 == position_3 && position_taken?(board, combo[0])
    return combo #it wants the indexes, not the board markers
  end
	#do not set an else, as otherwise you are forcing a return before the loop finishes. 
  end
  false
end

def full?(board)
  board.none? { |openMoves| openMoves == " "} 
end

def draw?(board)
  #returns true if the board has not been won but is full,
  if won?(board) == false && full?(board) == true
    true 
  #returns false if the board is not won and the board is not full,
  elsif won?(board) == false && full?(board) == false 
    false
    #and returns false if the board is won 
  elsif won?(board) == true
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
end


def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
