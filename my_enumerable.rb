module MyEnumerable
  def all?
    if block_given?
      each { | item | return false unless yield(item) }
    else
      each { | item | return false unless item } 
    end
    true
  end

  def any?
    if block_given?
      each { | item | return true if yield(item) }
    else
      each { | item | return true if item } 
    end
    false
  end

  def filter
    filtered_list = []
    if block_given?
      each { | item | filtered_list.push(item) if yield(item) }
      filtered_list
    else
      filter
    end
  end

  def max(num = nil)
    if num
      max_list = []
      init_list = @list
      num.times do
        max = first
        index = 0
        init_list.each_with_index do |elem, i|
          if (elem <=> max) == 1
            max = elem
            index = i
          end
        end
        max_list.push(max)
        init_list.delete_at(index)
      end
      max_list
    else
      max = first
      each do |elem|
        elem.downcase if elem.is_a? String
        max = elem if (elem <=> max) == 1
      end
      max
    end
  end
  
  def min
    min = first
    each do |elem|
      elem.downcase if elem.is_a? String
      min = elem if (elem <=> min) == -1
    end
    min
  end
end
