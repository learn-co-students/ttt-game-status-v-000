# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #top
  [3,4,5], #Middle
  [6,7,8], #bottom
  [0,3,6], #left vert
  [1,4,7], #middle vertical
  [2,5,8], #right vertical
  [2,4,6], #diagonal
  [0,4,8]  #diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
   if board[combo[0]] != " " && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
    return combo
   end
  end
  false
end

def full?(board)
  if board.include?(" ")
    false
  else
    true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    true
  else
    false
  end
end

def over?(board)
  if draw?(board) == true
    return true
  elsif full?(board) == true && won?(board) != false
    return true
  elsif full?(board) == false && won?(board) != false
    return true
  else
    false
  end
end



def winner(board)
  if winner = won?(board)
    board[winner.first]
  end 
end
