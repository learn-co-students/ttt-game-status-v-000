# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]


def won?(board)
  WIN_COMBINATIONS.each do |win_comb| #win_comb = [0, 1, 2]
   # win_comb.select do |win_index|
      win_index_1 = win_comb[0] #win_index_1 = 0
      win_index_2 = win_comb[1]
      win_index_3 = win_comb[2]
      
      position_1 = board[win_index_1] #board[0]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]
  
      if position_1 == "X" && position_2 == "X" && position_3 =="X" || position_1 == "O" && position_2 == "O" && position_3 =="O"
          return win_comb
      end
    end
    false
  end


def full?(board)
  board.all? do |full|
     full == "X" || full == "O"
  end
end


def draw?(board)
  if won?(board) == false && full?(board) == true 
    return true 
  elsif won?(board) == false && full?(board) == false || won?(board)
    return false
  end
end


def over?(board)
  if won?(board) || draw?(board) == true || full?(board) == true 
    return true 
  end
end


def winner(board)
  if won?(board) == false
    return nil
  else
    player = won?(board)
  winner_player = player[0]
  winner_player_1 = board[winner_player]
end 

# player = won?(board)

#  winner_player_1 = player[0]
 # winner_player_2 = player[1]
#  winner_player_3 = player[2]
 # the_winner = [board[winner_player_1], #board[winner_player_2], board[winner_player_3]]
  #the_winner.detect {|win| win == "X" || win == "O"}
  
 # player = won?(board)
#  winner_player = player[0]
 # winner_player_1 = board[winner_player]
end