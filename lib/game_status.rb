# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # Top row win
  [3,4,5],  # Middle row win
  [6,7,8],  # Bottom row win
  [0,3,6],  # Left vertical win
  [1,4,7],  # Middle vertical win
  [2,5,8],  # right vertical win
  [0,4,8],  # Left diagonal win
  [2,4,6] # right diagonal win
]
#full? method
def full?(board)
!board.include?(" ")
  end

#draw? method
def draw(board)
  !won?(board) && full?(board)
    true
  !won?(board) && !full(board) || won?(board)
    false
end

#over? method
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
    end
end

#winner? method
def winner(board)
  if board[WIN_COMBINATIONS] == "X"
    return "X"
  elsif board[WIN_COMBINATIONS] == "O"
    return "O"
    end
  end

#won method
#def won?(board)
  #if board(WIN_COMBINATIONS)
    #true
    #return win_combination
  #else
    #false
  #end
#end

#won method
#def won?(board)
#WIN_COMBINATIONS.each{|win_index|}
  #win_index < WIN_COMBINATIONS.length
  #win_index = WIN_COMBINATIONS[win_combination[0...9]]
  #WIN_COMBINATIONS.all? { |win_index|
    #board[position_1] == "X" && board[position_2] == "X" && board[position_3] == "X" || board[position_1] == "O" && board[position_2] == "O" && board[position_3] == "O"}
    #if WIN_COMBINATIONS.all? == true
     #return current_win_combination
   #else
     #return false
   #end
 #end

#won method
#def won?(board)
  #board.any?|position_1...position_9|WIN_COMBINATIONS
  #true
  #return win_combination
  #board.none?|position_1...position_9|WIN_COMBINATIONS
  #false
#end

#won method
def won(board)
  WIN_COMBINATIONS.each do |board|
    if WIN_COMBINATIONS.any?(board)
      return
      win_combintation
    elsif WIN_COMBINATIONS.none?(board)
      false
    end
  end
end

#won method
def won?(board)
board(WIN_COMBINATIONS)[win_index_1]
board(WIN_COMBINATIONS)[win_index_2]
board(WIN_COMBINATIONS)[win_index_3]
board(WIN_COMBINATIONS)[win_index_4]
board(WIN_COMBINATIONS)[win_index_5]
board(WIN_COMBINATIONS)[win_index_6]
board(WIN_COMBINATIONS)[win_index_7]
board(WIN_COMBINATIONS)[win_index_8]
  if board.any?WIN_COMBINATIONS
    true
    return
    win_combination
  elsif board.none?WIN_COMBINATIONS
    false
    end
  end

  # Iterate over WIN_COMBINATIONS
  Def won(board)
  board.each do|WIN_COMBINATIONS|

  #Or

  WIN_COMBINATIONS.each do|board|

  # Check board if same token is in each index of winning combination
  board.all?position=”X” || board.all?position=”O”

  #Or

  board.all?value=”X” || board.all?value=”O”

  #Or

  board.all?token=”X” || board.all?roken=”O”

  #Or

  board.all?win_combination=”X” || board.all?win_combination=”O”

  #Or

  win_combination.all?position=”X” || win_combination.all?position=”O”

  		True
  		Return win_combination

  Else
  		False

  WIN_COMBINATIONS.none?position=”X” || WIN_COMBINATIONS.none?position=”O”

  		False/nil

  	Else

  		True






  Def won?(board)
  board.each do |WIN_COMBINATIONS|
  win_combination.all?token=”X”||win_combination.all?token=”O”

  Def won?(board)
  WIN_COMBINATIONS.all? do |board == “X” || board == “O”|


  Def won?(board)
  WIN_COMBINATIONS.all? do |board|
  board.all?

  Def won?(board)
  board.all?token=”X”||”O”
