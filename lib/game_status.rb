# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2],
]

def won?(board) #defining won? method and passing in board as an argument
  combo = 0 #setting the counter to 0
   while combo < WIN_COMBINATIONS.length #while combo is less than WIN_COMBINATIONS.length (counts the 3 spaces in array)
     winning_combo = WIN_COMBINATIONS[combo] #winning_combo is equal to the winning combinations combo

     win1 = winning_combo.all? { |position| board[position] == "X" } #winner 1 has a winning_combo that includes all X's
     win2 = winning_combo.all? { |position| board[position] == "O" } #winner 2 has a winning_combo that includes all O's

     if win1 == true || win2 == true #if winner 1 equals true or winner 2 equals true
       return winning_combo #return that winning_combo
    end
    combo += 1 #combo = combo + 1, increment by 1
  end
  return nil
end

def full?(board)
  if  board.all? {|position| position == "X" || position == "O" } #Passes each element of the collection to the given block. The method returns true if the block never returns false or nil.
      return true
    else
     false
    end
  end

def draw?(board)
   if won?(board)
     return false
   elsif full?(board)
     return true
   else
     return false
   end
end


def over?(board)
  if won?(board)
    return true
  elsif draw?(board)
    return true
  elsif full?(board)
    return true
  else
    return false
  end
end

  def winner(board)
    if won?(board)
      combo = won?(board)
      return board[combo.first] #returns first item in the array of our combo which will be either an "X" or "O"
    end
  end
