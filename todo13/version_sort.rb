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
# assert_equal filenames.version_sort, version_sorted_filenames

class Array
  def version_sort
    split_version = self.collect do |filename|
      regex = /(foo-)(?<number>.*)(.ext)/
      m = regex.match(filename)
      m[1].split(".")
    end
    # split_version is an array of arrays of all the versions split at the decimal
    # new_array = []
    new_array = split_version.select do |version_array|
      version_array.each_with_index do |number, index|  
        number = 1
      end
    end
    puts new_array

 
    # puts new_array
    # split_sorted_version.each do |array|
    #   puts array.join(".")
    # end

    # split_version = version.collect do |number|
    #   number.split(".")
    # end  
  end
end

filenames.version_sort