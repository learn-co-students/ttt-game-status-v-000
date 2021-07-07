
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],#top row
[3,4,5],#middle row
[6,7,8],#bottom row
[0,3,6],#left column
[1,4,7],#middle column
[2,5,8],#right column
[0,4,8],#diagonal 1
[2,4,6]#diagonal 2
]

def won?(board)
WIN_COMBINATIONS.detect do |win_combo|
  win1 = win_combo[0]
  win2 = win_combo[1]
  win3 = win_combo[2]

  position_1 = board[win1]
  position_2 = board[win2]
  position_3 = board[win3]

  position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O"

  end
end

def full?(board)
!board.include?(" ")
end

def draw?(board)
if !won?(board) && full?(board)
  true
end
end

def over?(board)
  if draw?(board) || won?(board) || full?(board)
  true
  end
end

def winner(board)
result = won?(board)
if result
  board[result[0]] 
end
end
