# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],#top
  [3, 4, 5],#mid
  [6, 7, 8],#bot
  [0, 3, 6],#left vert
  [1, 4, 7],#mid vert
  [2, 5, 8],#right vert
  [0, 4, 8],#slash1
  [2, 4, 6]#slash2
]

def won?(board)

  win_index_1 = WIN_COMBINATIONS[0]
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_3 = WIN_COMBINATIONS[2]
  win_index_4 = WIN_COMBINATIONS[3]
  win_index_5 = WIN_COMBINATIONS[4]
  win_index_6 = WIN_COMBINATIONS[5]
  win_index_7 = WIN_COMBINATIONS[6]
  win_index_8 = WIN_COMBINATIONS[7]

  return false if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "]


  if board[win_index_1].all? { |i| i == "X"}
    puts WIN_COMBINATIONS_1

  end


end
