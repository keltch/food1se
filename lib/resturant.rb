require './lib/resturant_file'

#==  Context
# Objects are instantiated from the Resturant class as   
# each row of the Restuarants text files is read.  
# Defines global @@file object
# Creates a new Resturant File object and assigns it to @@file
# Intializes, checks validity of user entrys and saves to @@file.
#== Functional Owner
# Brian Keltch as of 2/28/19  Organization PhD student
#== Developer
#- Albert Camus as of 1/16/19  Initial Code
#- Jean Paul Sarte as of 1/22/19  Refactor to check for valid text file
class Restaurant
  
  attr_accessor :name, :cuisine, :price
  
  @@file = nil
  def self.file
    @@file
  end
  
  def self.load_file(filepath)
    # locate the restaurant text file at path
    @@file = RestaurantFile.new(:filepath => filepath)
    unless @@file.usable?
      puts "Restaurant file is not usable.\n\n"
      @@file = nil
    end
  end
  
  def self.all
    !@@file.nil? ? @@file.read : []
  end
  
  def initialize(options={})
    @name    = options[:name]    || ""
    @cuisine = options[:cuisine] || "unknown"
    @price   = options[:price]
  end
  
  def save
    !@@file.nil? && valid? ? @@file.append(self) : false
  end
  
  def valid?
    return false if name.nil? || name.blank?
    return false if cuisine.nil? || cuisine.blank?
    return false if price.nil? || price.to_i <= 0
    return true
  end
    
end
