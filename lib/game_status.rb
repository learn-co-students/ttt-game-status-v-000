# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
[0,1,2], # Top Row
[3,4,5], # Middle Row
[6,7,8], # Bottom Row
[0,3,6], # Left Column
[1,4,7], # Middle Column
[2,5,8], # Right Column
[2,4,6], # Diagonal Right Corner
[0,4,8] # Diagonal Left Corner
]

def won? (board)
# check board and return the winning combination indexes as an array
# if there is a win and false/nil if no win combination

  WIN_COMBINATIONS.each do |win_combination|
    win_combination.each do |win_index|
      if board [win_index[0]] == "X" && board[win_index[1]] == "X" &&
        board [win_index[2]] == "X


    end
  end

end
