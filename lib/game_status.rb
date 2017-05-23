
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
  [2,4,6],
]

def won?(board)

 WIN_COMBINATIONS.find do
  |combo|

  position_1 = board[combo[0]]
  position_2 = board[combo[1]]
  position_3 = board[combo[2]]

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    combo
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    combo
  else
    false
  end
 end
end


def full?(board)
  board.all? do |space|
     space == "X" || space == "O"
  end
end


def draw?(board)

  if full?(board) == true && won?(board) == nil
    true

  end
end


def over? (board)

 if won?(board) == true || draw?(board) == true || full?(board) == true
  true
 end
end


def winner (board)

combo = won?(board)

 if combo
   board[combo[0]]
 end
 end
 
