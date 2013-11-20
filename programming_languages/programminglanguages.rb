# Organizing Nested Data

# I have a collection of Programming Languages.  
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}


languages_new = {}

languages.each do |style, languagehash|
  languagehash.each do |language, hash|
    languages_new[language] ||= hash
    languages_new [language][:style] ||= []
    languages_new [language][:style] << style
  end
end

puts languages_new

# OLD SOLUTION

# languages_new = {}

# languages.each do |style, languagehash| 
#   languagehash.each do |language, hash|
#     languages_new[language] = hash
#     languages_new.each do |language, hash|
#       hash[:style] ||= []
#     end
#   end
# end


# languages_new.each do |language, hash|
#   languages.each do |style, languagehash|
#       hash[:style] ||= []
#   end
# end

# languages.each do |style, languagehash|
#   languagehash.each do |language, hash|
#       languages_new[language][:style] << style 
#   end
# end






# I would like you to reformat the nested structure to be of the following form

# {
#   :ruby => {
#     :style => [:oo],
#     :type => "dynamic"
#   },
#   :python => {
#     :style => [:oo],
#     :type => "dynamic"
#   }
#   etc etc
# }