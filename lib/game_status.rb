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
[6,4,2],
[0,3,6],
[1,4,7],
[2,5,8]
]

#def won(board)
#WIN_COMBINATIONS.each do |position|
  
def won?(board)
   game = false
   WIN_COMBINATIONS.each do |win_combination|
     if !game
       if win_combination.all?{|i| board[i]=="X"} || win_combination.all?{|i| board[i]=="O"}
         game = win_combination
       end
     end
   end
   game
 end

 def full?(board)
  board.all?{|i| (i=="X" || i =="O")} 
end

def draw?(board)
   !won?(board) && full?(board)
 end

 def over?(board)
  won?(board) || full?(board) || draw?(board)
 end

 def winner(board)
  winning = won?(board)
  if winning
    board [winning[0]]
  else
    nil
  end
end