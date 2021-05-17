require 'pry'

def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  full_string = ""
  array_index = 0
  while array_index < src.count do
    element_index = 0
    while element_index < src[array_index].count do
      if src[array_index][element_index].class == String
        full_string += " #{src[array_index][element_index]}"
      end
      element_index += 1
    end
    array_index +=1
  end
  full_string
end