module MyEnumerable
  def all?
    if block_given? === false
      each do |elem|
        if !elem
          return false
        end
      end
      return true
    end
    each do |elem|
      if yield(elem) === false
        return false
      end
    end
    return true
  end

  def any?
    if block_given? === false
      each do |elem|
        if !!elem
          return true
        end  
      end
      return false
    end
    each do |elem|
      if yield(elem) === true
        return true
      end
    end
    return false
  end

  def filter
    new_list = []
    if block_given? === false
      return filter
    end
    each do |elem|
      if yield(elem) === true
        new_list.push(elem)
      end
    end
    return new_list
  end

  def max
    new_list = []
    if block_given? === false
      return filter
    end
    each do |elem|
      if yield(elem) === true
        new_list.push(elem)
      end
    end
    return new_list
  end

  def sort
    new_list = []
    if block_given? === false
      return filter
    end
    each do |elem|
      if yield(elem) === true
        new_list.push(elem)
      end
    end
    return new_list
  end
end
