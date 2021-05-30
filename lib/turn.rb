# Displays TTT Board based off of board array
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  # Takes User Input and converts the number to a position on the board 
  def input_to_index(input)
    input = input.to_i
    input = input - 1
    return input
  end
  
    # code your #valid_move? method here
def valid_move?(board, index)
    if index.between?(0,8) == true
        if position_taken?(board,index) == true
            return true
        end
    else
        return false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
    if board[index] == "" || board[index] == " " || board[index] == nil
        return true
    else
        return false
    end
end

  # Marks user position on board with X or O
  def move(board,input,charac = "X")
    board[input] = charac
    return board
  end
  

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    val = valid_move?(board, index)
    if val == false
        puts "Please try another number"
        turn(board)
    else
        board = move(board,index)
        display_board(board)
    end
end
