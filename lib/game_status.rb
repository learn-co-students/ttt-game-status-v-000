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
  if
  WIN_COMBINATIONS[0].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[0]
elsif
  WIN_COMBINATIONS[1].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[1]
  elsif
  WIN_COMBINATIONS[2].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[2]
  elsif
  WIN_COMBINATIONS[3].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[3]
elsif
  WIN_COMBINATIONS[4].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[4]
  elsif
  WIN_COMBINATIONS[5].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[5]
  elsif
  WIN_COMBINATIONS[6].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[6]
elsif
  WIN_COMBINATIONS[7].all? do |i|
    i == "X" || i == "O"
  end
  WIN_COMBINATIONS[7]
else
  false
end
end
