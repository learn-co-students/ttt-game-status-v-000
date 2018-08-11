# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,4,6],
  [2,5,8],
  ]
  
  def won?(board)
    
    WIN_COMBINATIONS.detect do |combos|
      board[combos[0]] == board[combos[1]] && board[combos[2]] == board[combos[1]] && position_taken?(board, combos[0])
    end
  end
  
  def full?(board)
    board.all? {|token| token == "X" || token == "O"}
  end
  
  def draw?(board)
    full?(board) && !won?(board)
  end
  
  def over?(board)
    draw?(board) or won?(board) or full?(board)
  end
  
  def winner(board)
    winner = won?(board)
    
    if winner 
      index = winner[0]
      board[index]
    end
    
  end