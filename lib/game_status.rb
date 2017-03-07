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
  [2,4,6]
]

# Define won?, full?, draw?, over?, and winner below
def won?(array)
  WIN_COMBINATIONS.detect do |winner_set|
    if array[winner_set[0]] == array[winner_set[1]] &&
       array[winner_set[1]] == array[winner_set[2]] &&
       position_taken?(array, winner_set[0])
       return winner_set
    end
  end
end

def full?(array)
 if !(array.any?{|i| i == " "})
   #puts "the board is full!" } this caused the tests to fail
   return true
 #else                        } this was apparently redundant
   #return false              } this was apparently redundant
 end
end

def draw?(array2)
  if full?(array2) && !(won?(array2))
    puts "oh no it looks like a draw!"
    return true
  #else
  #  puts "it's not a draw afterall"
  #  return false
  end
end

def over?(array3)
  if full?(array3) || won?(array3)
    puts "GAME OVER"
    return true
  else
    return false
  end
end

def winner(array4)
  if three_that_won = won?(array4)
    array4[three_that_won.first]
  end
end
