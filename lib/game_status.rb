
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
  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  elsif board == ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
    return false
    end


  WIN_COMBINATIONS.each do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X"
      return win_combination
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      return win_combination
    end
end
end

def full?(board)
  board.all? {|element| element == "X" || element == "O"}
end


def draw?(board)
  if !won?(board) && full?(board)
    puts "Draw"
    true
  end
end


def over?(board)
  if !won?(board) || draw?(board) || full?(board)
    true
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |combo|

    win1 = combo[0]
    win2 = combo[1]
    win3 = combo[2]

    position1 = board[win1]
    position2 = board[win2]
    position3 = board[win3]

  if position1 == "X" && position2 == "X" && position3 == "X"
    return "X"
  elsif position1 == "O" && position2 == "O" && position3 == "O"
    return "O"
  end
end
    return nil
end







# Define your WIN_COMBINATIONS constant
