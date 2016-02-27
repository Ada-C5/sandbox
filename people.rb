people = [
  { name: "Jeremy Flores", email: "jeremy@adadevelopersacademy.org" },
  { name: "Kari Bancroft", email: "kari@adadevelopersacademy.org" }
]

people[0][:name]
# => people[0] => { name: "Jeremy"....}
# { name: "jeremy" ....}[:name]
# => "Jeremy Flores"

people_hash = {
  jeremy: { name: "Jeremy Flores", email: "jeremy@adadevelopersacademy.org" }
  kari:   { name: "Kari Bancroft", email: "kari@adadevelopersacademy.org" },
}

people_hash[:jeremy][:name]

peeps = { jeremy: # this is the key
  { # this entire hash is the value
    last_name: "Flores",
    first_name: "Jeremy",
    address: {
      street: "123 fake st",
      city: "Seattle",
      state: "WA"
    },
    pets: [
      {
        name:    "Rosalita",
        species: "dog"
      },
      {
        name:    "Raquel",
        species: "cat"
      }
    ]
  }
}

peeps[:jeremy][:address][:city] #=> "Seattle
peeps[:jeremy][:pets][0] # => { name: "Rosa..."}

