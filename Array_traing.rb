# array training
# creating arrays
i_array = [1, 2, 3, 4, 5, 6, 7]
str_array = %w[abc def ghi]
mix_array = [i_array, str_array]
not_array = 123

ar = Array.new()
ar.push([1, 2, 3, 4, 5])
ar = Array.new(3)
ar = Array.new(3, 5)

d_array = Array.new(3) { Array.new(2, 5) }

d_array = Array.new(3, Hash.new())


# print d_array

#==============================================================================
# Acessing Elements from array

print i_array[0]
print i_array[2..5]
print i_array[-1]
print i_array.first
print i_array.last
print i_array.each { |i| puts i**2 }
print i_array.take(2)
print i_array.drop(4)


#================================================================

# adding elements

i_array.push(9)
i_array.unshift(-1)
i_array.insert(3,45,67)
print i_array

#==============================================

# removing elements from array
i_array.shift
i_array.delete(45)
i_array.delete_at(3)
i_array.insert(1, 3, nil) # nil is not being inserted
print i_array.pop

i_array.compact!
i_array.uniq
print i_array

str_array.reverse_each { |i| puts i }

#==========================================

# selecting elements

print i_array.select { |i|  i > 4 }
print i_array.reject{|i| i > 4 }

temp = i_array

i_array.delete_if { |i| i<4 }
i_array.keep_if { |i| i<7 }
i_array = temp

#=========================================
# checking if array or not

if Array.try_convert(not_array)
  puts " an array "
else
  puts " not an array "
end
