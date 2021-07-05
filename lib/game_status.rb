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

def won?(arr)
  WIN_COMBINATIONS.find do |win_combo|
    pos_1 = arr[win_combo[0]]
    pos_2 = arr[win_combo[1]]
    pos_3 = arr[win_combo[2]]

    if pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
      win_combo
    elsif pos_1 == "O" && pos_2 == "O" && pos_3 == "O"
      win_combo
    end
  end
end

def full?(arr)
  arr.all?{|element| element == "X"||element == "O"}
end

def draw?(arr)
  !won?(arr) && full?(arr)
end

def over?(arr)
  won?(arr) or draw?(arr)
end

def winner(arr)
   won?(arr) ? arr[won?(arr)[0]] : nil
end
