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
def full?(board)
  board.include?("X" && "O") == true
  board.include?(" ") == false
end


# Define draw? Method
def draw?(board)
  !won?(board) && full?(board)
end


# Define over? Method
def over?(board)
  draw?(board) || won?(board)
end


# Define winner Method
def winner(board)
  if won?(board)
  token = won?(board)[0]
    binding.pry
  end
end


#SOLVE FOR WINNER METHOD

  # if won?(board) == true
  #   winning_array[0].detect

    # board.max_by { |token| board.count("X" || "O") }

    # WIN_COMBINATIONS.detect{|token| token.is_a?("X" || "O")}
    
    # freq = board.inject(Hash.new(0)) { |h,v| h[v] += 1}.max_by(&last)


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

#SOLVE FOR DRAW? LIKE THIS - OPTION win_index_1
  # if full?(board) == true && board != WIN_COMBINATIONS
  #   return true
  # elsif
  #   full?(board) == false && board != WIN_COMBINATIONS
  #   return false
  # else won?(board) == WIN_COMBINATIONS
  #   return false
  # end  
