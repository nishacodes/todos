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

class Array
def version_sort
  to_sort = []
  new_array = []

  self.each do |file|
    to_sort << (/foo-(\d*)\.{0,1}(\d*[a-z]{0,1})\.{0,1}(\d*)\.ext/).match(file)
  end

  sorted = to_sort.sort do |a,b|
    if(a[1].to_i <=> b[1].to_i) == 0
      if (a[2].to_i <=> b[2].to_i) == 0
        (a[3].to_i <=> b[3].to_i)
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
  p new_array
end
end

filenames.version_sort

# class Array
#   def version_sort
#     split_version = self.collect do |filename|
#       regex = /(foo-)(?<number>.*)(.ext)/
#       m = regex.match(filename)
#       m[:number].split(".")
#     end
    
#     split_version.select do |array|
#       while array.size < 3
#         array << ""
#       end
#     end
        
#     sorted_version = split_version.sort do |a,b|
#       if (a[0] <=> b[0]) == 0
#         if (a[1] <=> b[1]) == 0
#           a[2] <=> b[2]
#         else
#           a[0] <=> b[0]
#         end
#       else
#         a[1] <=> b[1]
#       end
#     # p sorted_version
#     end
#   end
# end

    # sorted_split_version = split_version.sort do |a,b|
    #   if (a[0] <=> b[0]) == 0
    #     if (a[1] <=> b[1]) == 0
    #       a[2] <=> b[2]
    #     else
    #       a[1] <=> b[1]
    #     end
    #   else
    #     a[2] <=> b[2]
    #   end
    # p sorted_split_version


    # split_version is an array of arrays of all the versions split at the decimal
    # new_array = []
    # new_array = split_version.select do |version_array|
    #   version_array.each_with_index do |number, index|  
      
    #   end
    # end
#   # end
# end

filenames.version_sort