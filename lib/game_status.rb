# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #Top_row [0]
  [3,4,5], #Middle_row [1]
  [6,7,8], #Bottom_row [2]

  [0,3,6], #Left_Column [3]
  [1,4,7], #Middle_Column [4]
  [2,5,8], #Right_Column [5]

  [0,4,8], #Diagonal_0-8 [6]
  [2,4,6]  #Diagonal_2-6 [7]
]

def won?(board)
  WIN_COMBINATIONS.detect { |win_combination| #returns only 1st combo that matches below conditions
  #checks if all 3 (passed_to_board) WIN_COMBINATIONS[indexes]) are the same (==) by comparing indexes to eachother until all 3 indexes have been compared
    board[win_combination[0]] == board[win_combination[1]] && #win/board 1st_Index == win/board 2nd_Index ...AND
    board[win_combination[1]] == board[win_combination[2]] && #win/board 1st_Index == win/board 3rd_Index ...AND
    position_taken?(board, win_combination[0]) #last check ...win/board index is not an empty string
  }
end

def full?(board)
  #no winning combo && every index either "X" or "O"
  !won?(board) && board.all? { |i| i == "X" || i == "O" }
end

def draw?(board)
  full?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  if won?(board).is_a? Array
    win_combo = won?(board)[0]
    board[win_combo]
  else return nil
  end
end
