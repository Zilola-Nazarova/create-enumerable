module MyEnumerable
  def all?
    if block_given?
      each do |elem|
        return false unless yield(elem)
      end
    else
      each do |elem|
        return false unless elem
      end
    end
    true
  end

  def any?
    if block_given?
      each do |elem|
        return true if yield(elem)
      end
    else
      each do |elem|
        return true if elem
      end
    end
    false
  end

  def filter
    new_list = []
    if block_given?
      each do |elem|
        new_list.push(elem) if yield(elem)
      end
      new_list
    else
      filter
    end
  end
end
