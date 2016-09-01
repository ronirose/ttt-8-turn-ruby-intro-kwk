def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == "" ||  array[index] == nil
    return false
  elsif  array[index] == "X" || array[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return nil
  elsif index > 9 || index < 0
    return nil
  else
    return true
  end
end

def display_board(board)
  dashes = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts dashes
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts dashes
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def move(board, index, value = "X")
  board[index] = value
end
