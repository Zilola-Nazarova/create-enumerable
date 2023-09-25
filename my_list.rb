require_relative 'MyEnumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

puts list.all? { |e| e < 5 }
puts list.all? { |e| e > 5 }
puts list.all?
puts [0, 2, 3, nil].all?

puts list.any? { |e| e == 2 }
puts list.any? { |e| e == 5 }
puts list.any?
puts [false, nil].any?

puts list.filter { |e| e.even? }


# puts %w[ant bear cat].all? { |word| word.length >= 3 }
# puts %w[ant bear cat].all? { |word| word.length >= 4 }
# puts %w[ant bear cat].all?(/t/)
# puts [1, 2i, 3.14].all?(Numeric)
# puts [nil, true, 99].all?
# puts [].all?


# puts %w[ant bear cat].any? { |word| word.length >= 3 }
# puts %w[ant bear cat].any? { |word| word.length >= 4 }
# puts %w[ant bear cat].any?(/d/)
# puts [nil, true, 99].any?(Integer)
# puts [nil, true, 99].any?
# puts [].any?

# puts (1..10).filter { |i|  i % 3 == 0 }
# #=> [3, 6, 9]

# puts [1,2,3,4,5].filter { |num|  num.even?  }
# #=> [2, 4]

# puts [:foo, :bar].filter { |x| x == :foo }
# #=> [:foo]

# puts [:foo, :bar].filter.inspect
