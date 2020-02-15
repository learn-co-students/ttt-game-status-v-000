require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
  WIN_COMBINATIONS = [
    [0,1,2], #this is first row
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8], # this is a diagnol win
    [6,4,2]  # this is diagnol win
  ]

def won?(board)
  WIN_COMBINATIONS.each do |winning|   #this line of code is starting a loop through the nested array
    index_1 = winning[0]  # these 3 lines of code are pulling a number from the nested array and they aren't specific to just the first child array. this is really pulling a number/position on the board
    index_2 = winning[1]  # these are 3 new variables that I created that are speaking to the WIN_COMBINATIONS nested array
    index_3 = winning[2]  # carlo notes --> bounding whatever you put in the vertical bars is bound to each of the elements below

    position_1 = board[index_1]  # these 3 lines of code are pulling a letter on the board and seeing if a letter is represented or filled in on the according position on the board
    position_2 = board[index_2]
    position_3 = board[index_3]  # carlo notes --> think of them as labels, in algebra you have X but you don't know what it means each time, variable are about substitition

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return winning                                                     # --> this if statement is saying if  the variable position_1 position_2 and position_3 are occupied with an X then return winning which is the local variable we created for the each do block
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return winning                                                     # --> this did the same thing as the line above but used an elsif statement to check for O's instead of X's
    else
      false   # --> this line was needed
    end
  end
  false   # --> this line was needed in order to get the draw and the blank board to return false. what's interesting about this is that given where we placed this false right before the last end meant that it was representative of the end related to the method won. it's basically saying that if we went through the entire loop and didn't get a winning board return false which would indicate it was a empty board or a draw
end



# # def won?(board)
#  WIN_COMBINATIONS.detect do |winning|       # --> this gives it a condition and returns the first one that matches that
#    board[winning[0]] == board[winning[1]] &&
#    board[winning[1]] == board[winning[2]] &&
#    position_taken?(board, winning[0])        # --> this called the helper method at the top and called the board and said if we detect a X in that position of O and if the 0 index and the 1 index and the 2 index all match then return an array of a winning board
#  end  # --> carlo notes, declaritive vs. imperative code - two ways to write code, want to strive for delcarative code
# end

def full?(board)
 board.all? { |position| position == "X" || position == "O" }  # --> carlo note / the |position | bars are they are binding essentially creating a local variable with scope to this block of code
end

def draw?(board)
  full?(board) && !won?(board)
end
# def draw?(board)
#  full?(board) && won?(board)
#  WIN_COMBINATIONS.detect do |winning| # we have to call on the collection 0, 6, and 7 here on the next line of code to get those winning combinations
#  !won?(board)  #why when i move this line to line 54 does the test for "returns true for a draw" fail again?
#  end
# end

def over?(board)
  won?(board) || draw?(board) # && full?(board)
end

# for my over method i previously have the below and was getting my first 3 tests to pass but not the 4th and that's when i went to ask a question and they helped me reactor it down to a much simpler code base of just one line of code and then they helped me refactor my draw method to just one line of code as well
# what the teacher explain is  b/c full was part of the draw method by calling on the "draw method" via helper method in my over method it is going to take into account fullness...and so just having the over method be defined as the game being WON or a DRAW would take into account fullness
# def over?(board)
#  won?(board)
#  draw?(board)
#  full?(board) || !full?(board)
#end


def winner(board)
  if won_game = won?(board)
    return board[won_game.first]
  end
 end

  #binding.pry
 # if won?(board)
 #   return "X"
 # elsif won?(board)
 #  return "O"
 # else
 #   return nil
 # end


# my lines 80 - 86 was not smart enough to evaluate for O only X and nil...so we needed to create a new variable won_game set it equal to our won method
# then we needed to return board and in brackets by adding won_game it essentially gave us our winning combinations and the .first provided us with a winning X or O
# binding.pry a way for you to evaluate your code based on the current scope that you're up to depending on where you wrote binding.pry in your codebase and you get an idea of what the variables are equiavalent to...gives you a sense of what you think might be wrong versus being able to actually see what it is inccorect in your code
# .first is a built in method for the array data type in ruby...research .first
   # try solving this on paper then get into the code, they then wrestle with the code, make sure you understand the solution to thep roblem outside the code


     # if the board is full without a winner return a draw which equate to a true
     # if the board has a winner return false and if the board is incomplete return a false


#break the problem down into mini subproblems and then solve them 1 by 1
# a question mark tells you whether you will return a true or false value
#detect - gives it a condition and returns the first one that matches that
#command backslash comments everything out or back in
# command and a square bracket [ will indent backforwards and command ] will command forwards
# i'm trying to check if a full child array like [0,1,2] has X's occupying those spaces so i'm not trying to pull out individual elements from each child array
# thinking i might want to use the helper method of position_taken in my won method to check for if there's an X in the winning positions constant to return that winning array
# thinking i might want to use an elsif statement to provide another row of logic for each array
# i think the won method is asking me to check the board for a winning combination which you wuld do by checking if there's an X in the winning combination child arrays
