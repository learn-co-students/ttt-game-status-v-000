
# Helper Method
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
  WIN_COMBINATIONS.find do |win_combination|
    positions = [
      board[win_combination[0]],
      board[win_combination[1]],
      board[win_combination[2]]
    ]

    if positions.include?(" ")
      false
    else
      positions.all? {|position| position == positions[0]}
    end
  end
end

def full?(board)
  !board.include?(" ")
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    true
  end
end

def winner(board)
  if won?(board)
    winning_array = won?(board)
    player = board[winning_array[0]]
  else
    nil
  end
end
