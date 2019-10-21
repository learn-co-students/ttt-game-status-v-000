# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.detect do |variable|
    win_index_1 = variable[0]
    win_index_2 = variable[1]
    win_index_3 = variable[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

if position_1 == position_2 && position_2 == position_3 && position_1 != " "
  return variable # this return just the 3 winning indexes
    end
  end
end

def full?(board)
  board.all?{|char| char if char == "X" || char == "O"} # using the if statement setsup a implicit return and keeps the loop going.
end



def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || full?(board) || won?(board)
end

def winner(board)
  if winner_board = won?(board)
    board[winner_board.first] #variable stores winning combo (index array) / then takes winning index and compares to winning characters on the board. then it grabs the first winning character.
  end
end
