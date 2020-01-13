require 'pry'
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant - an array for each win combination
WIN_COMBINATIONS = [
  [0,1,2], # Top row - a win combo
  [3,4,5],  # Middle row - a win combo
  [6,7,8],  # bottom row - a win combo
  [0,3,6], # Left column - a win combo
  [1,4,7],  # Middle column - a win combo
  [2,5,8],  # Right column - a win combo
  [2,4,6], # right diagonal - a win combo
  [0,4,8] # left diagonal - a win combo
]

#########
## NOTES
#########
#--------

#def win?(board)
def won?(board)
  # binding.pry
  # each time you yield the element to the block and it is assign to win_combo
  # the first time we go through win_combo is assign to [0,1,2]
  # the next time we go through win_combo is assign to [3,4,5]
  # detect - the first time we yield a value to this block and we get a truthy result what ever the last thing in this block is truthy
  #.. we get what ever what win_combo is back automatically
  # detect - is going to look for a match for what ever I put into this block
  # detect - is already built to return for us
  #.. if it returns truthy it will give me the thing that made it return truthy(it will give me the combo that represents a winning board and if it does not find one it will return false or nil)
  #.. when true that combo is the return value

  # Put something in the block which evaluates to falsey or truthy so some type of comparision
  # .. if I find some element in this WIN_COMBINATIONS array that gives me a truthy value for this expression then I want that element
  # .. that is the one that I am looking for
  WIN_COMBINATIONS.find do |win_combo| # calling the varible inside the pips something what it is
    # the thing that I pass to the block here is deciding what is a winning combination for this board what is it
    # .. if this board has a winning combo on it where is that winning combo.
    # So our enum will go through all of these and check to see if our board that we pass into won? has all "X" on those positions or all "O"
    # If position_1 and position_2 and position_3 are all "X" - then that will be true
    #.. and that means this block will return true which means we will get this win_combo(from the pips)
    #.. so detect is handing all of our return requirments for us

      # Method 1:
      #board[win_combo[0]] == board[win_combo[1]] && board[win_combo[1]] == board[win_combo[2]] && position_taken?(board, win_combo[0])

      # Method 2:
        win_index_1 = win_combo[0]
        win_index_2 = win_combo[1]
        win_index_3 = win_combo[2]

        # these tell us whats on the board at the three positions represented by
        #.. these indexes
        position_1 = board[win_index_1]
        position_2 = board[win_index_2]
        position_3 = board[win_index_3]

        # position_1 == "X" && position_2 == "X" && position_3 == "X" ||
        # position_1 == "O" && position_2 == "O" && position_3 == "O"
        position_1 == position_2 && position_2 == position_3 &&
        position_taken?(board, win_index_1)
  end
end

#end # =>if lose -  false/nil
     # => return the winning combination (array) if there is a win.

#def full?(board)
def full?(board)
  answer = true
  board.each do |token|
    if token != "X" && token != "O"
      answer = false
    end
  end
	answer
    # other solution - board.all?{|token| token == "X" || token == "O"}
end
#end # => (true) if board is full with either x or an o
    # => (false) if board is not full - some blank spaces not filled with o's or x's \\ board.include?("")

def draw?(board)
  (full?(board)) && !(won?(board))
end # => (true) if the board has not been won but is full
     # => (false) if the board is not won and the board is not full, and false if the board is won.

def over?(board)
  won?(board) || draw?(board) || full?(board)
end # (true) if the board has been won, is a draw, or is full


def winner(board)
  # && - what it does is it will return the first falsey value or the last truthy value and when both are falsey you get the first thing that is falsey
  #.. so in our case that is going to be won?(board) is going to be nil because won?(board) is nil we won't get to board[won?(board)[0]] -> this protects us from trying to call [] on something that is nil.
  won?(board) && board[won?(board)[0]]
end # => the token, "X" or "O" - from the winning board
