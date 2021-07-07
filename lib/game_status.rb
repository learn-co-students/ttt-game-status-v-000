#Helper Method

#This is one way of writing the #position_taken? method, already provided by Learn for this lab:
  # def position_taken?(board, index)
  #   !(board[index].nil? || board[index] == " ")
  # end

#I'm going to use my #position_taken? method I've written before, makes more sense to me for now:
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

#############################################

#Define your WIN_COMBINATIONS constant:

WIN_COMBINATIONS = [
  [0,1,2],  #top row horizontal
  [3,4,5],  #middle row horizontal
  [6,7,8],  #bottom row horizontal
  [0,3,6],  #left vertical
  [1,4,7],  #center vertical
  [2,5,8],  #right vertical
  [0,4,8],  #diagonal
  [6,4,2]   #diagonal
]


#This #won method will search the board for winning combinations and return true
#if there's a winning combo (X|X|X or O|O|O), false if not.

def won?(board)
  WIN_COMBINATIONS.find do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" #why && and not ||? Because with &&, you are combining the three indexes as a check if the board contains an X. With ||, it'll check each of those indexes seperately for an X, then move on to the next || condition.
      return win_combination
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      return win_combination
    else
      false
    end
  end
end

def full?(board)
  board.all?{|positions| positions == "X" || positions == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
 won?(board) || draw?(board)
end

def winner(board)
  WIN_COMBINATIONS.find do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X" #why && and not ||? Because with &&, you are combining the three indexes as a check if the board contains an X. With ||, it'll check each of those indexes seperately for an X, then move on to the next || condition.
      return "X"
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O"
      return "O"
    else
      nil
    end
  end
end
