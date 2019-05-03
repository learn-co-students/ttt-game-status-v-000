# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 3, 6], #First column
  [1, 4, 7], #Second column
  [2, 5, 8], #Third column
  [0, 4, 8], #Diagonal One
  [2, 4, 6], #Diagonal Two
]

def won?(board)
  winning_combo = 0
  WIN_COMBINATIONS.each do |combo_array|
    win_index_1 = combo_array[0]
    win_index_2 = combo_array[1]
    win_index_3 = combo_array[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      winning_combo = combo_array
      winning_person = "X"

    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      winning_combo = combo_array
      winning_person = "O"
    end
  end
  if winning_combo != 0
    return winning_combo
  else
    return false
  end
end

def full?(board)
  all_full = board.all? do |value|
    value.include?("X") || value.include?("O")
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) != false
    return true
  elsif draw?(board) == true
    return true
  else
    return false
  end
end



def winner_function(board)
  winning_combo = 0
  winning_person = 0
  WIN_COMBINATIONS.each do |combo_array|
    win_index_1 = combo_array[0]
    win_index_2 = combo_array[1]
    win_index_3 = combo_array[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      winning_combo = combo_array
      winning_person = "X"

    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      winning_combo = combo_array
      winning_person = "O"
    end
  end
  if winning_combo != 0
    return winning_person
  else
    return false
  end
end

def winner(board)
  store_person = winner_function(board)
  store_combo = won?(board)
  if store_combo == false
    return nil
  elsif store_person == "X"
    return "X"
  elsif store_person == "O"
    return "O"
  else
    return false
  end
end
