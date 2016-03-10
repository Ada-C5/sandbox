# ~/C5/sandbox/mixins.rb
class String # <= wat?!? We can do this? We sure can!
  def smiley_spaces
    gsub(/\s+/, " :) ")
  end

  def reverse
    "lolnope"
  end
end

module AllSmiles
  def to_smile
    ":)" * length
  end
end

class String
  include AllSmiles
end

class Array
  include AllSmiles
end












