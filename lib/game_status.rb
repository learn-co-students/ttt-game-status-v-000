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
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]
# def won?(board)
#  temp1=[]
#
#
# #
# #  Checking if the postions are taken and grabing indeces -> temporary array temp1
# #
#
# i=0
# count=0
#  while i< 9
#   if position_taken?(board,i)
#     temp1 << i
#     count+=1
#   end
#   i+=1
#  end
#
#
# #  WIN_COMBINATIONS.each_index{ |i| puts "#{WIN_COMBINATIONS[i]},"}
# #
# #  Comparing the temporary array of indeces to see if its a winning combination
# #
# # Checking if board is empty & its a draw
#   # if its a draw  call draw
# if count == 0
#   # || draw?(board)
#   return false
# end
# k=0
# index=0
# while k < 9
#   if WIN_COMBINATIONS[k] == temp1
#         index=k
#         match=true
#   end
#   k+=1
#  end
#  if match
#     return WIN_COMBINATIONS[index]
#  else
#     return false
#  end
# end
#


def helper(arr)
    k=0
    index=0
    i=0
# Checking first row, diagonal, first column
     while i < 4
        if arr[i]== 0
          if arr.include?(1) && arr.include?(2)
             temp_arr=[0,1,2]
          end
          if arr.include?(4) && arr.include?(8)
              temp_arr=[0,4,8]
          end
          if arr.include?(3) && arr.include?(6)
              temp_arr=[0,3,6]
          end
       end
# Checking Middle Column
       if arr[i]==1 && arr.include?(4) && arr.include?(7)
          temp_arr=[1,4,7]
       end
# Checking diagonal or last column
       if arr[i]==2
          if arr.include?(4) && arr.include?(6)
          temp_arr=[2,4,6]
          end
          if arr.include?(5) && arr.include?(8)
          temp_arr=[2,5,8]
          end
        end
# Checking if middle row
        if arr[i]==3 && arr.include?(4) && arr.include?(5)
           temp_arr=[3,4,5]
        end
        # Checking if bottom row
       if arr[i]==6 && arr.include?(7) && arr.include?(8)
          temp_arr=[6,7,8]
       end
      i+=1
     end





      k=0
      while k < 9
            if (WIN_COMBINATIONS[k] == temp_arr)
               return temp_arr
               break
            else
               k+=1
            end

      end
        return false
    end




        # if WIN_COMBINATIONS[k] == temp_arr
        #      index=k
        #      match=true
        #      # puts "here"
        # end
        #    k+=1
        #  end
        #  if match == true
        #    return WIN_COMBINATIONS[index]
        #  else
        #    return false
        #  end
      #  end


       def won?(board)

       #
       #  Checking if the postions are taken and grabing indeces -> temporary arrays
       #    "X"--> x_temp   "O"--> o_temp
         x_temp=[]
         o_temp=[]
         i=0
         count=0
         while i< 9
           if position_taken?(board,i)
             if board[i]=="X"
               x_temp << i
             end
             if board[i]=="O"
               o_temp << i
             end
             count+=1
           end
         i+=1
         end
         #  count=0 means array is empty
         if count == 0
              return false
         end
        #  if draw?(board)
        #    return false
        #  end
         if helper(x_temp)
          #  puts "X won "
           return helper(x_temp)
         end
         if helper(o_temp)
          #  puts "O won "
           return helper(o_temp)
         end

       end
# The `#full?` method should accept a board and return true if every element in the board contains either an "X" or an "O". For example:
#
# ```ruby
# full_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
# full?(full_board) #=> true
#
# incomplete_board = ["X", " ", "X", "O", " ", "X", "O", " ", "O"]
# full?(incomplete_board) #=> false
# ```
#
# The `#full?` method doesn't need to worry about draws or winning combinations, simply return false if there is an available position and true if there is not.
#
# There is a great high-level iterator besides `#each` that will make your code super awesome elegant. But `#each` will certainly work great too.
def full?(board)
  count_x=board.count("X")
  count_o=board.count("O")
  val=count_x + count_o
  if val == 9
    return true
  else
    return false
  end
end
### `#draw?`

# Build a method `#draw?` that accepts a board and returns true if the board has not been won and is full and
# false if the board is not won and the board is not full, and false if the board is won. You should be able to compose this method solely using the methods you used above with some ruby logic.
#
# You can imagine its behavior:
#
# ```ruby
#   draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
#   draw?(draw_board) #=> true
#
#   x_diagonal_won = ["X", "O", "X", "O", "X", "O", "O", "O", "X"]
#   draw?(x_diagonal_won) #=> false
#
#   incomplete_board = ["X", " ", "X", " ", "X", " ", "O", "O", "X"]
#   draw?(incomplete_board) #=> false
# ```
def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
  first_row=[0,1,2]
  diag_left=[0,4,8]
  diag_right=[2,4,6]
  if won?(board)==first_row || won?(board)==diag_left || won?(board)==diag_right
    return false
  end
  if (!won?(board) && !full?(board)) || won?(board)
    return false
  end

end




### `#over?`

# Build a method `#over?` that accepts a board and returns true if the board has been won, is a draw, or is full. You should be able to compose this method solely using the methods you used above with some ruby logic.
#

def over?(board)
  if draw?(board) || won?(board)
    return true
  end
  if !won?(board)
    return false
  end
end
### `#winner`

# The `#winner` method should accept a board and return the token, "X" or "O" that has won the game given a winning board.
#
# The `#winner` method can be greatly simplified by using the methods and their return values you defined above.
#
# ```ruby
# x_win_diagonal = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
# winner(x_win_diagonal) #=> "X"
#
# o_win_center_column = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
# winner(o_win_center_column) #=> "O"
#
# no_winner_board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
# winner(no_winner_board) #=> nil
def winner(board)
  if draw?(board)
    return nil
  end
  if won?(board)
    count_x=board.count("X")
    count_o=board.count("O")
    if count_x > count_o
      return "X"
    else
      return "O"
    end
  end
end
