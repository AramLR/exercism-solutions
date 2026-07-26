module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    unless ship_identifier.to_s.scan(/OIL|GAS/).empty? then :A else :B end
  end
end

#p Port::IDENTIFIER
#p Port.get_identifier "Hamburg"
#p Port.get_terminal(:OIL123)