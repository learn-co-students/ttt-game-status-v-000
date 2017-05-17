# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[
  [0,1,2], # top row(h)
  [3,4,5], # mid row (h)
  [6,7,8], # bottom row (h)
  [0,4,8], # left top bottom right (oblique)
  [2,4,6], # right top bottom left (oblique)
  [0,3,6], # left row (v)
  [2,5,8], # right row (v)
  [1,4,7] # mid row (v)
]


def won?(board)
WIN_COMBINATIONS.find do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  pos_1 = board[win_index_1]
  pos_2 = board[win_index_2]
  pos_3 = board[win_index_3]

  if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
    win_combination
  elsif pos_1 == "O" && pos_2 == "O" && pos_3 == "O"
    win_combination
  end
end
end


board=[" "," "," "," "," "," "," "," "," "]

def full?(board)
  board.all? do |element|
      element=="X"||element=="O"
    end
end

def draw?(board)
  draw=nil
  if !(won?(board)) && full?(board)
    draw=true
  else
    draw=false
  end
  draw
end

def over?(board)
  over=nil
  if won?(board) || draw?(board) || full?(board)
    over=true
  else
    over=false
  end
  over
end


def winner(board)
  result=nil
  if won?(board)
    won?(board).select do |pos|
      if board[pos[0]] == "X"
        result= "X"
      elsif board[pos[0]] == "O"
        result= "O"
      end #1st if
    end #do
  end #2nd if
result
end #def
