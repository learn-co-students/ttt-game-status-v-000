def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[2, 5, 8],[1, 4, 7],[0, 3, 6],[0, 4, 8],[6, 4, 2]]

def won?(board)
 
  def won?(board)
WIN_COMBINATIONS.select do |combo|
  board[combo[0]] && board[combo[1]] && board [combo[2]] == "X"
  end
end

  
def full?(board)
end

def draw?(board)
end

def over?(board)
end

def winner?(board)
end
