require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 5, 3, 4, 6)
puts list.inspect
# puts list.max
# puts list.min
# puts list.max(3)

# puts list.min(2)
# list1 = MyList.new('albatross', 'dog', 'horse')
# puts list1.inspect
# puts list1.max
# puts list1.min
# puts list1.max(2)
# puts list1.min(2)
# puts list1.max { |a, b| a.length <=> b.length }
# puts(list.all? { |e| e < 5 })
# puts(list.all? { |e| e > 5 })
# puts list.all?
# puts [0, 2, 3, nil].all?

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 7 })
puts list.any?
puts [false, nil].any?

puts(list.filter(&:even?))

# puts %w[ant bear cat].all? { |word| word.length >= 3 }
# puts %w[ant bear cat].all? { |word| word.length >= 4 }
# puts %w[ant bear cat].all?(/t/)
# puts [1, 2i, 3.14].all?(Numeric)
# puts [nil, true, 99].all?
# puts [].all?
# puts %w[ant bear cat].all?(/a/)

# puts %w[ant bear cat].any? { |word| word.length >= 3 }
# puts %w[ant bear cat].any? { |word| word.length >= 4 }
# puts %w[ant bear cat].any?(/d/)
# puts [nil, true, 99].any?(Integer)
# puts [nil, true, 99].any?
# puts [].any?

print (1..10).filter { |i|  i % 3 == 0 }
#=> [3, 6, 9]

print [1,2,3,4,5].filter { |num|  num.even?  }
#=> [2, 4]

print [:foo, :bar].filter { |x| x == :foo }
#=> [:foo]

print [:foo, :bar].filter.inspect

print [].filter.inspect
