require 'mysql2'
require 'debugger'

class Dog
  attr_accessor :color, :name, :id

  @@db = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "dogs")

  def initialize name, color
    @name = name
    @color = color
  end

  def insert
    db.query("INSERT INTO dogs (name, color) VALUES ('#{self.name}','#{self.color}');")
    save_id
  end

  def save_id
    self.id = self.db.last_id if self.db.last_id > 0
  end

  def saved?
    self.id.nil? 
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

  def self.create_from_db(dog_id)
    result = db.query("SELECT * FROM dogs WHERE id = #{dog_id}")
    # debugger
    row = result.first
    # debugger
    dog1 = Dog.new(row["name"],row["color"]).save_id
  end

  def self.db
    @@db
  end

  def db
    @@db
  end

end

