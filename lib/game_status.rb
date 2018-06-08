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
  
  win_index_1 = WIN_COMBINATIONS[0]
  win_index_2 = WIN_COMBINATIONS[1]
  win_index_3 = WIN_COMBINATIONS[2]
  
  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

    # if empty board, return FALSE
    if board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
      return false 
    # if not empty board and not draw, then evaluate for winning combo 
    elsif
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return win_combination # return the win_combination indexes that won.
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination # return the win_combination indexes that won.
      else
        return false
      end
    else
      return false
    end
end 

#this passed!!!
        # if draw, return FALSE
    # elsif !WIN_COMBINATIONS == true
    #   return false 


#old thought on how to pass
      # if board.each do |played_move|
      #   played_move << check if position_taken?(board, 0..8)
      #   end
      #   WIN_COMBINATIONS
      # else false
      #   return "Next player's turn"
  
  
# position_taken?.detect do |winning_array|
#    if artist_element.class != Array
#       puts "Artist: #{artist_element}"
#     else
#       artist_element.each do |album_element|
#         if album_element.class != Array
#           puts "Album: #{album_element}"
#         else
#           album_element.each do |song_element|
#             puts "Song: #{song_element}"
#     end

# def won?(board)
#   if position_taken?.each do |winning_array|
#     winning_array.WIN_COMBINATIONS?
#   end
# end


# Define full? Method




# Define draw? Method




# Define over? Method




# Define winner Method




