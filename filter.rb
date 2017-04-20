# Filter elements in an array
class Array
  def filter(&block)
   result = []
   raise TypeError, 'Element given must be an array' if self.class != Array
    if block_given?
    	 self.each {|e| next if block.call(e); result << e}
    end
    result
  end
end

# Example:
# [1,2,3,4].filter {|e| e < 3}
#   => [3,4]
# ['apple', 'watermelon', 'banana', 'kiwi'].filter {|fruit| fruit.length >= 6}
#   => ['apple', 'kiwi']

# Do you want to contribute?
# https://github.com/nardonykolyszyn/ruby-samples
