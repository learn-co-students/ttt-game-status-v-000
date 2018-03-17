# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  #Top rows
  [0, 1, 2],
  #Middle Row
  [3, 4, 5],
  #Bottom Row
  [6, 7, 8],
  #Bottom left diagonal
  [6, 4, 2],
  #Bottom Right diagonal
  [8, 4, 0],
  #Top Left vertical
  [0, 3, 6],
  #Middle Right vertical
  [1, 4, 7],
  #Top Right Vertical
  [2, 5, 8]
]


def won?(board)
  WIN_COMBINATIONS.detect do |variable|
    board[variable[0]] === board[variable[1]] &&
    board[variable[1]] === board[variable[2]] &&
      position_taken?(board, variable[0])
  end
 end

 def full?(board)
    board.all? do |element|
     element == "X" || element == "O"
      end
   end

def draw?(board)
!won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
if won?(board)
    winning_token = won?(board)
      board[winning_token[0]]
    end
end
