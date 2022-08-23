module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    my_array = []
    list.each do |element|
      my_array.push(element) if yield(element)
    end
    p my_array.length == list.length
  end

  def any?
    my_array = []
    list.each do |element|
      my_array.push(element) if yield(element)
    end
    puts !my_array.empty?
  end

  def filter?
    my_array = []
    list.each do |element|
      my_array.push(element) if yield(element)
    end
    p my_array
  end
end
    
