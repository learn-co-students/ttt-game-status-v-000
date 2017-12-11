require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # left column
  [1,4,7],  # middle column
  [2,5,8],  # Right column
  [0,4,8],  # Diagonal 1
  [2,4,6]  # Diagonal 2
  # ETC, an array for each win combination
]

# def won?(board)
# WIN_COMBINATIONS.any? do |combinations|
#     combinations.each do |array_items|
#       if array_items[0] == "X" && array_items[1] == "X" && array_items[2] == "X"
#         end
#   end
# end
# end


# def won?(board)
# WIN_COMBINATIONS.select do |winning_arrays|
#     winning_arrays.select do |array_items|
#         if array_items[0] == "X" && array_items[1] == "X" && array_items[2] == "X"
#         elsif array_items[0] == "O" && array_items[1] == "O" && array_items[2] == "O"
#         end
#     end
#   end
# end




# Define your WIN_COMBINATIONS constant
# def won?(board)
#   winning_position = []
#     WIN_COMBINATIONS.any? do |winning_arrays|
#       winning_arrays.any? do |array_items|
#       if array_items[0] == "X" && array_items[1] == "X" && array_items[2] == "X"
#        winning_position << array_items if array_items[0] == "X" && array_items[1] == "X" && array_items[2] == "X"
#       end
#     end
#   end
# end

# puts "#{array_items[0]}, #{array_items[1]}, #{array_items[2]}".to_a

#best so far
# def won?(board)
# WIN_COMBINATIONS.any? do |winning_arrays|
#     winning_arrays.all? do |array_items|
#         if array_items[0] == "X" && array_items[1] == "X" && array_items[2] == "X"
#         end
#     end
#   end
# end

def won?(board)
  WIN_COMBINATIONS.detect do |winning_arrays|
  # binding.pry
  board[winning_arrays[0]] == board[winning_arrays[1]] && board[winning_arrays[1]] == board[winning_arrays[2]] && position_taken?(board, winning_arrays[0]) #because the values at each position - they're all the same
  end
end

def full?(board)
board.all? do |token|
  if token == "X" || token == "O"
    true
  else
    false
    end
  end
end

# def draw?(board)
#   # if   won?(board) == false
#   if full?(board) == true && won?(board) != true
#   else won?(board) != true
#      false   # else full?(board) == false && won?(board) == true
#   end
# end

def draw?(board)
full?(board) && !won?(board)
end

def over?(board)
full?(board) || won?(board) || draw?(board)
end

# def winner(board)
# winning_player = ""
#    WIN_COMBINATIONS.each do |winning_arrays|
#      winning_arrays.each do |array_items|
#       if won?(board) == true && board[array_items[0]] == "X"
#           winning_player = "X"
#       else won?(board) == true && board[array_items[0]] == "0"
#         winning_player = "O"
#       end
#    end
#  end
# winning_player
# end

def winner(board)
winning_player = ""
indexes = won?(board)
  if won?(board) != nil
   winning_player = board[indexes[0]]
   winning_player
end
end
