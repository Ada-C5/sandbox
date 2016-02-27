require_relative './user'

def assert(expression, message = "The assertion failed")
  unless expression == true
    raise Exception.new(message)
  end

  true
end

jeremy = User.new("Jeremy", "Flores")
peggy_sue = User.new("Peggy Sue", "Allen")

puts assert(jeremy.full_name == "Jeremy Flores")
puts assert(jeremy.name_with_username == "Jeremy Flores: J-Flores")
puts assert(jeremy.username == "J-Flores", "Username wasn't formatted correctly.")
puts assert(peggy_sue.full_name == "Peggy Sue Allen")
