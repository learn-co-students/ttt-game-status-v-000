# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]



def won?(board)
  WIN_COMBINATIONS.each do |combo|

   tempx = combo.all? do |number|
    board[number] == "X"
     end

     tempo = combo.all? do |number|
      board[number] == "O"
       end

   if tempx == true || tempo == true
     return combo
end
end
return nil
end


def full?(board)

board.each do |number|
 if number == nil or number == " "
  return false
end
end
return true
end

def draw?(board)
  if full?(board) == true && won?(board) == nil
    return true
  else return false
  end
end

def over?(board)
  if draw?(board) == true || won?(board) != nil
    return true
  else return false
  end
end


def winner(board)
  WIN_COMBINATIONS.each do |combo|

   tempx = combo.all? do |number|
    board[number] == "X"
     end

     tempo = combo.all? do |number|
      board[number] == "O"
       end

   if tempx == true
     return "X"
   elsif tempo == true
     return "O"

end
end
return nil
end
