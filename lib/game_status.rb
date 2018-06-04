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
  WIN_COMBINATIONS.each do |combo|
    if board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] &&
      position_taken?(board, combo[0])
      puts "We have a winner!"
      return combo
    else nil
    end
  end
  return nil
end

def full?(board)
  board.all? {|space| position_taken(board, board[space])}
end 

def draw?(board)
  if full?(board) && !won?(board)
    return true
  elsif !full?(board) && !won?(board)
    return false
  else return false
end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    return true
    puts "Game Over. Thanks for playing!"
  end
end

def winner(board)
  WIN_COMBINATIONS.each do |win_group|
    if win_group.all? {|win_index| board[win_index] == current_player(board)}
      puts current_player(board)
      return current_player(board)
    else
      nil 
    end 
  end
  return nil
end


def turn_count(board)
  counter = 0
  board.each do |play|
    if play == 'X' || play == 'O'
      counter += 1
    end
  end
  return counter
end

def current_player(board)
  if turn_count(board) % 2 == 0
    return 'X'
  else
    return 'O'
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
  winner(board)
end