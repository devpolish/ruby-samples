# Selection Sort 
# Nardo Nykolyszyn

def selection_sort(array)
  sorted_array = []
  n = array.size
  (n-1).times do
    min = array.min
    sorted_array << min
    array.delete(min)
   end
  sorted_array
end

numbers = Array.new(10) {|n| n=rand(0..99)}
print selection_sort(numbers) 
