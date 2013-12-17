require 'mysql2'
require 'debugger'

class Dog
  attr_accessor :color, :name, :id

  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  def initialize name, color
    @name = name
    @color = color
  end

  def insert_and_save
    db.query("INSERT INTO dogs (name, color) VALUES ('#{self.name}','#{self.color}');")
    self.id =  self.db.last_id if self.db.last_id > 0
  end

  def update
    db.query("UPDATE dogs SET name='#{self.name}', color='#{self.color}' WHERE id = #{self.id};") 
  end

  def delete
    db.query("DELETE FROM dogs WHERE id = #{self.id};") 
  end

  def self.find(id)
    db.query("SELECT * FROM dogs WHERE id = #{id};")
  end

  def self.db
    @@db
  end

  def db
    @@db
  end

end

# dog2 = Dog.new("Sandy", "brown")
# dog2.insert_and_save
# dog2.id
# dog2.delete
debugger

puts "hi"




# class Dog
#   attr_accessor :name, :color, :id

#     @@db = Mysql2::Client.new(:host => '192.168.2.2',:username => "student",:password => "mypass",:database => "wizards")
  
#   def initialize(name, color)
#     @name = name
#     @color = color
#   end

#   def self.db
#     @@db
#   end

#   def db
#     @@db
#   end

#   def self.find(id)
#     db.query("SELECT * FROM dogs WHERE id = #{'id'}")
#     if results.first.nil?
#       return "whimper"
#     else
#       return self.new_from_db(results.first)
#     end
#   end

#   def insert
#     db.query("INSERT INTO dogs (name, color) values ('#{self.name}', '#{self.color}')")
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

#   def mark_as_saved!
#     self.id = self.db.last_id if self.db.last_id > 0
#   end

#   def saved?
#     return true if self.id.nil? 
#   end

#   def save
#     self.saved? ? self.update : self.insert
#   end
# end
