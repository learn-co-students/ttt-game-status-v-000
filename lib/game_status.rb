# Helper Method
#require "pry"
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], #bottom row
  [0,3,6], #left vertical
  [2,5,8], #right vertical
  [0,4,8],#top left diagonal
  [2,4,6],#top right diagonal
  [1,4,7]#middle column
]

def won?(board)

  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

   position_1 == "X" && position_2 == "X" && position_3 =="X" || position_1 == "O" && position_2 == "O" && position_3 =="O"

  
  end

    #binding.pry
end


    def full?(board)
     board.all?{|i| i == "X" || i == "O"}
    end

#returns true if the board has not been won and is full and
#false if the board is not won and the board is not full,
#and false if the board is won.

  def draw?(board)
    !won?(board) && full?(board)
  end

#Build a method #over? that accepts a board and returns true if the board has been won, is a draw, or
#is full. You should be able to compose this method solely using the methods you
#used above with some ruby logic.

def over?(board)
  draw?(board) || won?(board) || full?(board)
end

#The #winner method should accept a board and return the token, "X" or "O"
#that has won the game given a winning board.
#The #winner method can be greatly simplified by using the methods and their return
#values you defined above.

def winner(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

  if position_1 == "X" && position_2 == "X" && position_3 =="X"
      return "X"
    elsif position_1 == "O" && position_2 == "O" && position_3 =="O"
      return "O"
    else
      nil
  end
    end

end
