# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # bottom row
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
  # ETC, an array for each win combination
]
def turn_count(board)
  size = 0
  count = 0
  while size < board.length
    if board[size] != "" && board[size] != " "
    count = count + 1
   end
  size = size + 1
  end
 count
end

def won?(board)
  draw_flag = 0
  if turn_count(board) != 0

   WIN_COMBINATIONS.each do |win_combination|
     x_flag = 0
     o_flag = 0
     win_combination.each do |win_combination_each|
       if position_taken?(board,win_combination_each)
          if board[win_combination_each] == "X"
               x_flag = x_flag + 1
               if x_flag == 3
                 return win_combination
               end

          elsif board[win_combination_each] == "O"
               o_flag = o_flag + 1
               if o_flag == 3
                 return win_combination
               end
          end
        end #position_taken
       end #combination

     end #combinations
    draw_flag = 1
  elsif turn_count(board) == 0
    false

  end #turn_count
 if draw_flag = 1
   false
 end
end # won

def full?(board)
  if turn_count(board) == 9
   true
 else
   false
 end
 end
def draw?(board)
  if won?(board) == false
    true
  else
    false
  end
end
def over?(board)
  if turn_count(board) == 9 || won?(board) != false
    true
  else
    false
  end

end

def winner(board)
  if won?(board) != false
    index = won?(board)
    position = index[0]
    return board[position]
  else
    nil
  end
end
