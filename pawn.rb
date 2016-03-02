class Pawn
  attr_reader :position

  def initialize(position)
    @position = position
  end

  def move
    # long term goals
  end

  def self.find(position)
    # let's pretend these pawns came off the great 
    # persistent cosmic chessboard
    pawns = {
      white: self.make_row("white"),
      black: self.make_row("black")
    }

    # if I wanna find the pawn in a2.... wat do?

    # the position likely tells us if it's a white or black pawn
    # let's decide which set of pawns we want to iterate
    if position.include?("2")
      pawns_to_check = :white
    else
      pawns_to_check = :black
    end

    # loop through them until we find the one we're looking for
    one_we_are_looking_for = nil
    pawns[pawns_to_check].each do |pawn|
      # if the pawn we have is the one we're looking for
      if pawn.position == position
        one_we_are_looking_for = pawn
      end
    end

    # return the pawn with the position of a2
    return one_we_are_looking_for
  end

  # This is the class method, it starts with self.
  # It is only called on the class directly Pawn.make_row
  def self.make_row(side)
    if side == "white"
      num = 2
    else
      num = 7
    end

    pawns = []
    ("a".."h").each do |letter|
      pawns << self.new("#{letter}#{num}")
    end

    pawns
  end
end
