# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)

  if board.all? {|index| index == " "} == true && board.all? {|index| index == 'X' || index == 'O'} == true
    return false
  else
    WIN_COMBINATIONS.each do |combo|
      if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
        return combo
      end
    end

  end
  return false
end

def full?(board)
  if board.all? {|index| index == 'X' || index == 'O'}
    true
  elsif board.any? {|index| index == " "}
    false
  end
end

def draw?(board)
  !won?(board)
end

def over?(board)
  if full?(board) == false
    false
  else
    true
  end
end

def winner(board)


  if draw?(board)
    return nil
  end


  i = won?(board)[0]
  if board[i] == "X"
    "X"
  elsif board[i] == "O"
    "O"
  end
end
