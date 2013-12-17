require 'mysql2'
require 'debugger'

class Dog
  attr_accessor :color, :name, :id

  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")
  DOGS = []

  def initialize name, color
    @name = name
    @color = color
    DOGS << self
  end

  def insert
    db.query("INSERT INTO dogs (name, color) VALUES ('#{self.name}','#{self.color}');")
    save
  end

  def save
    self.id = self.db.last_id if self.db.last_id > 0
  end

  def update
    db.query("UPDATE dogs SET name='#{self.name}', color='#{self.color}' WHERE id = #{self.id};") 
  end

  def delete!
    db.query("DELETE FROM dogs WHERE id = #{self.id};") 
  end

  def self.delete_all!
    db.query("TRUNCATE dogs;")
  end

  def self.find(id)
    db.query("SELECT * FROM dogs WHERE id = #{id};")
  end

  def self.find_by_name(dog_name)
    db.query("SELECT * FROM dogs WHERE name = '#{dog_name}';")
  end

  def self.find_by_color(dog_color)
    db.query("SELECT * FROM dogs WHERE color = '#{dog_color}';")
  end

  def self.find_by_id(dog_id)
    db.query("SELECT * FROM dogs WHERE id = '#{dog_id}';")
  end

  def self.create_from_db(id)
    result = db.query("SELECT * FROM dog WHERE id = #{id}")
    Dog.new = result.first[:name],result.first[:color]
  end

  def self.db
    @@db
  end

  def db
    @@db
  end

end

Dog.delete_all!
dog1 = Dog.new("Sandy", "brown")
dog1.insert_and_save
dog1.id
debugger

dog1.name = "fluffy"
dog1.update
dog1.delete!

Dog.create_from_db(2)
debugger
DOGS
debugger
puts "hi"




# class Dog

#   def self.find(id)
#     db.query("SELECT * FROM dogs WHERE id = #{'id'}")
#     if results.first.nil?
#       return "whimper"
#     else
#       return self.new_from_db(results.first)
#     end
#   end


#   def self.new_from_db(row) # create a new instance from a query result that's in the form of a hash
#     dog = Dog.new(row[:name],row[:color])
#   end

#   def self.find_by_name(name)
#     self.db.query("
#       select *
#       from dogs
#       where name - '#{name}'
#       ")
#     if results.first.nil?
#       return "whimper"
#     else
#       return self.new_from_db(results.first)
#     end
#   end

#   def self.wrap_results results

#   end
  
#   def update
#     self.db.query("
#       UPDATE dogs
#       SET name = '#{self.name}', color='#{self.color}'
#       WHERE id = #{self.id}
#       ")
#   end


#   def saved?
#     return true if self.id.nil? 
#   end

#   def save
#     self.saved? ? self.update : self.insert
#   end
# end
