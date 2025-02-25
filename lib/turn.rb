def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index < board.length && !position_taken?(board, index)
    TRUE
  else
    FALSE
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    TRUE
  else
    FALSE
  end
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Invalid input"
    turn(board)
  end
end


