# instructions: implement Array.uniq
 
class Array
 
  def uniq
    array = []
    self.each do |item|
      array << item unless array.include?(item)
    end
    array
  end
end