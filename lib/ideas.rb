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
def won?(board)

  #My idea with this is that I can iterate over "WIN_COMBINATIONS"
  #To check if each of the positions are filled with either X or O
  #The issue is that I have not found a place to pass the board into
  #SO ideally I can pass the board in, check if the board has all positions occupied
  #in each of the win combos, AND THEN if all positions are occupied, to check if all positions
  #are either Xs or Ox ... TBD
  #Oh, and then, if they ARE all Xs or Os, to then pass that particular
  #WIN_COMBINATION into the winning_combo array and then return that array when it's done

  winning_combo = []

  WIN_COMBINATIONS.each do |combo|
    if combo.all? == "X" || "O"
      winning_combo += combo
    else
      false
    end
  end

  if winning_combo == []
    false
  else
    winning_combo
  end

end
