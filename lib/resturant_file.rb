#==  Context
# Resturants file takes care of text file valiadtion,
# reads, writes, and saves data to the text file.  It also poulates resturatant
# objects. 
#== Functional Owner
# Brian Keltch as of 1/15/19  Organization PhD student
#== Developer
#- Kirk Sojerkin as of 1/16/17  Sojerkin Inc.  Initial Code
#- Brian Keltch as of 1/22/19  Refactor to add BDD, TDD, and Self Evident features
class RestaurantFile

  @@delimiter = "\t"
  @@line_map = [:name, :cuisine, :price]
  
  def initialize(options={})
    self.filepath = options[:filepath]
  end
  
  def filepath=(path=nil)
    return if path.nil?
    @filepath = File.join(APP_ROOT, path)
    if !exists?
      create_save_file
    end
  end

  def exists?
    @filepath && File.exists?(@filepath)
  end
  
  def readable?
    @filepath && File.readable?(@filepath)
  end

  def writable?
    @filepath && File.writable?(@filepath)
  end

  def usable?
    exists? && readable? && writable?
  end

  #==  Context
  # Creates a Resturant object from each line text file.
  def read
    restaurants = []
    if readable?
      file = File.new(@filepath, 'r')
      file.each_line do |line|
        restaurants << restaurant_from_line(line)
      end
      file.close
    end
    return restaurants
  end

  #==  Context
  # Creates a line in the text file for each Resturant ojbect. 
  def append(restaurant)
    return false unless writable?
    File.open(@filepath, 'a') do |file|
      line_array = @@line_map.map {|a| restaurant.send(a)}
      file.puts "#{line_array.join(@@delimiter)}\n"
    end
    return true
  end
  
  private
  
    def create_save_file
      File.open(@filepath, 'w')
    end

    def restaurant_from_line(line)
      line_array = line.chomp.split(@@delimiter)
      attributes = Hash[@@line_map.zip(line_array)]
      return Restaurant.new(attributes)
    end

end
