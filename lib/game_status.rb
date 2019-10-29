# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],#top row
[3,4,5],#middle row
[6,7,8],#bottom row
[0,3,6],#left column
[1,4,7],#middle column
[2,5,8],#right column
[0,4,8],#diagonal l to r
[2,4,6]#diagonal r to l
]

# def won?(board)
#   WIN_COMBINATIONS.each do |win_combination|
#     win_index_1 = win_combination[0]
#     win_index_2 = win_combination[1]
#     win_index_3 = win_combination[2]
#     position_1 = board[win_index_1]
#     position_2 = board[win_index_2]
#     position_3 = board[win_index_3]
#     if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
#       return win_combination
#     else
#       return false
#     end
#   end
# end
def won? (board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if [position_1, position_2, position_3].all? {|symbol| symbol == "X"}
      return win_combination
    elsif [position_1, position_2, position_3].all? {|symbol| symbol == "O"}
       return win_combination
     end
   end
   false
 end

def full?(board)
  !board.include?(" ") #if board does not include a space
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if WIN_COMBINATIONS.include?(won?(board))
    index = won?(board)[0]
    return board[index]
  end
end
