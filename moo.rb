def say_moo(number_of_moos)
  puts('mooooo' * number_of_moos)

  # (puts 'moooooo') * number_of_moos
  # (nil) * number_of_moos # => error

  number_of_moos.times do
    puts 'mooooo'
  end
end
