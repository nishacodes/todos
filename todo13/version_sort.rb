require 'debugger'

filenames = [
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.3.ext",
  "foo-1.50.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.ext",
  "foo-10.1.ext",
  "foo-10.ext",
  "foo-100.ext",
  "foo-13.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.0.ext",
  "foo-2.007.ext",
  "foo-2.01.ext",
  "foo-2.012b.ext",
  "foo-2.01a.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.1.ext",
  "foo-25.ext",
  "foo-6.ext",
]
version_sorted_filenames = [
  "foo-1.ext",
  "foo-1.3.ext",
  "foo-1.8.7.ext",
  "foo-1.9.3.ext",
  "foo-1.10.2.ext",
  "foo-1.11.ext",
  "foo-1.50.ext",
  "foo-2.0.ext",
  "foo-2.0a.ext",
  "foo-2.0b.ext",
  "foo-2.0.0.ext",
  "foo-2.0.1.ext",
  "foo-2.01.ext",
  "foo-2.1.ext",
  "foo-2.01a.ext",
  "foo-2.007.ext",
  "foo-2.012b.ext",
  "foo-6.ext",
  "foo-10.ext",
  "foo-10.1.ext",
  "foo-13.ext",
  "foo-25.ext",
  "foo-100.ext",
]

class String
  # don't turn empty strings into an integer
  def to_int
    self.to_i unless self == ""
  end
end

class Array
  def version_sort
    to_sort = []
    new_array = []

    self.each do |file|
      to_sort << (/foo-(\d*)\.{0,1}(\d*)\.{0,1}(\d*)([a-z]{0,1})\.ext/).match(file)
    end
    puts to_sort
    sorted = to_sort.sort do |a,b|
      if(a[1].to_int <=> b[1].to_int) == 0
        if (a[2].to_int <=> b[2].to_int) == 0
          if (a[3].to_int <=> b[3].to_int) == 0
            (a[4] <=> b[4])
          else
            (a[3].to_i <=> b[3].to_i)
          end
        else 
          (a[2].to_i <=> b[2].to_i)
        end
      else
        (a[1].to_i <=> b[1].to_i)
      end
    end
    sorted.each do |array|
      new_array << array[0]
    end
    new_array
  end
    # new_array
end
describe "hello" do
  it "should" do
    filenames.version_sort.should eq(version_sorted_filenames)
  end
  
end