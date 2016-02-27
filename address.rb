class Address
  attr_accessor :first_name, :street_two 

  def initialize(address_hash)
    @first_name  = address_hash[:first_name]
    @last_name   = address_hash[:last_name]
    @street_one  = address_hash[:street_one]
    @street_two  = address_hash[:street_two]
    @city        = address_hash[:city]
    @state       = address_hash[:state]
    @country     = address_hash[:country]
    @postal_code = address_hash[:postal_code]
  end

  def print_address
    printy = "#{@first_name} #{@last_name}"
    return printy
  end
end

addy = Address.new(first_name: "Jeremy", last_name: "Flores", street_one: "somewhere", city: "Seattle")
addy.street_two = "apt 10000000"
addy.first_name = "Still Jeremy"
puts addy.print_address #=> "Still Jeremy Flores"
