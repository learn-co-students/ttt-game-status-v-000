# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |combination|
   if position_taken?(board, combination[0])
     if board[combination[0]] == board[combination[1]] && board[combination[1]]== board[combination[2]]
      return combination
     end
   end
  end
  false
end

def full?(board)
  board.all? do |taken|
    taken != " "
     end
end

def draw?(board)
  won?(board) == false
end

def over?(board)
    if won?(board) || full?(board)
      true
  end
end

def winner(board)
  if won?(board)
    WIN_COMBINATIONS.each do |combination|
      if position_taken?(board, combination[0])
        if board[combination[0]] == board[combination[1]] && board[combination[1]]== board[combination[2]]
          return board[combination[0]]
        end
      end
  end

  else
  end
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
