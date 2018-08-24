# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
 WIN_COMBINATIONS = [
  [0,1,2], #Top Hor WIN
  [3,4,5], #Mid Hor WIN
  [6,7,8], #Bot Hor WIN
  [0,3,6], #Left Vert WIN
  [1,4,7], #Mid Vert WIN
  [2,5,8], #Right Vert WIN
  [0,4,8], #DR Diag WIN
  [2,4,6], #DL Diag WIN
]

def won? (board)
  WIN_COMBINATIONS.each do |combo| # combo =[3, 4, 5]
    position = combo[0] #postion = 3
    position_2 = combo[1] #postion = 4
    position_3 = combo[2] #postion = 5

    cell = board[position] # "X" || "O"
    cell_2 = board[position_2]
    cell_3 = board[position_3]

    if cell == cell_2 && cell_2 == cell_3 && position_taken?(board, position)
      return combo
    end
  end
  false
end

def full? (board)
  board.all? { |empty| empty != " "}
end

def draw?(board)

  if  won?(board) == true
  return false
  end
  if board.any? { |empty| empty == " " }
  return false
  end
  if board.any? { |empty| empty != " " } && won?(board) == false
  return true
  end
end

def over?(board)
  if draw?(board)
    return true
    end
  if won?(board) 
    return true
    end
end
# else return false
# end
#
# def over?(board)
#   if won?(board) || draw?(board)
#     return true
#   else return false
#    end
#  end

def winner(board)
  WIN_COMBINATIONS.each do |combo|
    position = combo[0]
    position_2 = combo[1]
    position_3 = combo[2]

    cell = board[position]
    cell_2 = board[position_2]
    cell_3 = board[position_3]

    if cell == cell_2 && cell_2 == cell_3 && position_taken?(board, position)
    # if won?(board) == true
    return "#{cell}"
    end
  end
  else
    return nil
    end
