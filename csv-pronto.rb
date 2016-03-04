require 'CSV'

people = [[1,"Kari"], [2, "Jeremy"], [3, "Crystal"], [4, "Cynthia"]]
CSV.open("ada_peeps.csv", "w") do |file|
  people.each do |person|
    file << person
  end
end
