class Cat
  CLIMB_MULTIPLIER = 1
  def purr
    "purrrrrrr"
  end

  def climb
    "i has claws" * CLIMB_MULTIPLIER
  end

  def ignore
    "..."
  end
end

class Tiger < Cat
  CLIMB_MULTIPLIER = 4
  def purr
    ":("
  end

  def climb
    climbing_result = super
    climbing_result * CLIMB_MULTIPLIER
  end

  def roar
    "RAAWWWRRRR"
  end
end

class ScottishFold < Cat
  CLIMB_MULTIPLIER = 2
  def foldy_ears
    "dawwwwww"
  end
end
