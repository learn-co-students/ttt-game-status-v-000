#----------------------------------------------------
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#here's a constant that defines all win combinations
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

#----------------------------------------------------
def won? (board)
  x_spots = board.each_index.select {|i| board[i] == "X"}
  o_spots = board.each_index.select {|i| board[i] == "O"}
  is_a_win = false



    #for each of the winning arrays, do any these sets of 3 spots all exist in the filled x/o spots
    #if the 3 spots from any of the win arrays are all found in the x spots (each one is checked below)
    #then this will return true
    x_win = WIN_COMBINATIONS.each { |current_win_array|
    #so for this current win array (1 of the 8 possible wins in win_combinations)
    #are #all? of its elements #included? in the x_spots
    #only if all of the win array spots are found in x_spots, will it return true
    if current_win_array.all? { |current_win_spot| x_spots.include?(current_win_spot) }
      is_a_win = current_win_array
    end

    }


    #exact same but for o
    o_win = WIN_COMBINATIONS.each { |current_win_array|


      if current_win_array.all? { |current_win_spot| o_spots.include?(current_win_spot) }
        is_a_win = current_win_array
      end

    }

  #### TO EXTEND THIS TO INDICATE WHO WON: I believe you just return the array but also indicate x or o win
  #note we're leveraging ruby's unique truthiness and dynaimc typing here; this could break i suppose if ruby changed that
  if is_a_win.class == Array
    return is_a_win
  elsif is_a_win == false
    return is_a_win
  end

end

def full? (board)
  #if any of the elements are blank, it will return true, which means it will be not full
  return !board.any? {|x| x == " "}
end


def draw? (board)
  #it's a draw if the board does not have a win and it's full; otherwise, not a draw
  return !won?(board) && full?(board)
end

def over? (board)
  return won?(board) || draw?(board) || full?(board)
end

def winner (board)

  if won?(board) #this leverages ruby truthiness, where an array returned evaluates to truthy
  return board[won?(board)[0]]
  else
  return nil
  end

end
