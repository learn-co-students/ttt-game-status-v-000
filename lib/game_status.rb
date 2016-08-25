# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
	[0,1,2], #top row
	[3,4,5], #middle row
	[6,7,8], #bottom row
	[0,3,6], #first column
	[1,4,7], #middle column
	[2,5,8], #last column
	[0,4,8], #diagonal top left to bottom right
	[2,4,6]] #diagonal bottom left to top right

#define a method to check for winning combinations
def won?(board)
  win_combo = nil
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    token1 = board[win_combination[0]]
    token2 = board[win_combination[1]]
    token3 = board[win_combination[2]]

     if token1 == "X" && token2 == "X" && token3 == "X"
       win_combo = win_combination
        elsif token1 == "O" && token2 == "O" && token3 == "O"
        win_combo = win_combination
        end
     end
   win_combo
end

#define a method accepts a board and return if every
#element in the board contains either an  "X" or an "O"
def full?(board)
   board.all? {|x| x != " "}
end

#define a method accepts a board and returns true if
#if the board has not been won and is full and
#false if the board is not and the board is not full,
#and false if the board is won.
def draw?(board)
   if won?board == nil && full?(board)  == true
      return false
   end
end

#define a method accepts a board and returns true
#if the board has been won, is a draw, or is full
def over?(board)
   if won?(board) != nil || draw?(board) == true || full?(board) == true
     return true
   end
end


#define a method accepts a board and return the token,"X" or "O" that has won
#the game given the winning board
def winner(board)
   token = nil
   if won?(board) != nil
     win_combo = won?(board)
     token = board[win_combo[0]]
   end
   token
end
