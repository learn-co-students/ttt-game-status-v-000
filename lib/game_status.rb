# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top Row
  [3,4,5], #Middle Row
  [6,7,8], #Bottom Row
  [0,3,6], #Left Row
  [1,4,7], #Center Row
  [2,5,8], #Right Row
  [0,4,8], #Incline diagonals
  [6,4,2], #Decline diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do | win_combination |
    location1 = win_combination[0]
    location2 = win_combination[1]
    location3 = win_combination[2]

    board[location1] == board[location2] && board[location2] == board[location3] && board[location1] != " "
  end
end
