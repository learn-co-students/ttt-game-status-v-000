
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
  board_collection_X = board.each_index.select {|i| board[i] == "X"}
  board_collection_O = board.each_index.select {|i| board[i] == "O"}

  WIN_COMBINATIONS.each do |element|
    return element if (element - board_collection_X).empty? ||
                      (element - board_collection_O).empty? #array - array available
    end
  return false
end

def full?(board) #finished
  board.none?{|element| element == " "}
end

def draw?(board) #done
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board) #done
  arr = [won?(board),draw?(board),full?(board)]
  arr.any?{|arr_ele| arr_ele == true}
end

def winner(board)
  if !won?(board)
    return nil
  elsif board[won?(board)[0]] == "O"
    return "O"
  elsif board[won?(board)[0]] == "X"
    return "X"
  end
end
