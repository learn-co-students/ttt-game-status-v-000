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
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" &&
      position_3 == "X"
      return win_combination
    else
      false
    end
  end
end
