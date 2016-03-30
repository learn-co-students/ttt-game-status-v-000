# Helper Method
require 'pry'

def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]

def won?(board)

  win = 0;

  WIN_COMBINATIONS.each do |combination|
    if combination.all?  {|position| board[position] == "X"}
      return combination
      break
      win = 1
    elsif combination.all? {|position| board[position] == "O"}
      return combination
      win = 1
      break
    elsif board.all? {|place| place == " "}
      return false
    end
  end
  if ((win = 0) && (board.none? {|place| place == " "}))
      return false
    end
end 

def full?(board)
  if won?(board) == true
    return false
  elsif board.none? {|place| place == " "}
    return true
  elsif board.include?(" ")
    return false
  end
end

def draw?(board)
  if won?(board).is_a?(Array)
    return false
  elsif full?(board) == false
    return false
  else
    return true
  end
end

def over?(board)
  if draw?(board) == true
    return true
  elsif full?(board) == false
    return false
  elsif won?(board) != false
   return true
  end
end

def winner(board)
  output = won?(board)
  winner = nil;
  if output == nil
    return winner
  elsif ((output != false) && (output.all? {|place| board[place] == "X"}))
    winner = "X"
    return winner
  elsif ((output != false) && (output.all? {|place| board[place] == "O"}))
    winner = "O"
    return winner
  end
end

    
