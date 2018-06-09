require "pry"

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
  WIN_COMBINATIONS.detect do |winning_array|

    win_index_1 = winning_array[0]
    win_index_2 = winning_array[1]
    win_index_3 = winning_array[2]
  
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
  position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
  end
end 


# Define full? Method




# Define draw? Method




# Define over? Method




# Define winner Method








#SOLVE FOR WON? LIKE THIS - OPTION 1
    # elsif position_taken?(board, index).to match_array(WIN_COMBINATIONS)
    #   return WIN_COMBINATIONS[]


#SOLVE FOR WON? LIKE THIS - OPTION 2
      # if board.each do |played_move|
      #   played_move << check if position_taken?(board, 0..8)
      #   end
      # WIN_COMBINATIONS
      # else
      #   false
      # end


#SOLVE FOR WON? LIKE THIS - OPTION 3
    # elsif board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
    #     return WIN_COMBINATIONS[]
    # elsif board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
    #     return WIN_COMBINATIONS[]


#SOLVE FOR WON? LIKE THIS - OPTION 4
    # X_moves = []
    # elsif board.select do |X|
    #   X.is_a?("X")
    # end
    # X_moves
    
    # O_moves = []
    # elsif board.select do |X|
    #   O.is_a?("O")
    # end
    # O_moves
    
    # WIN_COMBINATIONS.include?("X" 3 times)

