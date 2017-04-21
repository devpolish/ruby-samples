# BubleSort Algorithmic code
# Nardo Nykolyszyn
numbers = [98, 29, 12, 8, 90]
def buble_sort(array)
  n = array.length - 1
  loop do
    swapped = false
    n.times do |i|
      if array[i] > array[i+1] # array.next
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

print "Original: #{numbers}" + "\n"
print "Buble sorted: #{ buble_sort(numbers) }" + "\n"
print "Rand sorted: #{numbers.sort}"
