class BubbleSort
  def sort(col)  
    size = col.size
    def iter(size, elements)
    if size < 1
      return elements
    end
    i = 0
    while i < size-1 do
      if elements[i] > elements[i + 1]
        sub_element = elements[i+1]
        elements[i+1] = elements[i]
        elements[i] = sub_element
      end
      i += 1
    end    
    size = size - 1
    iter(size, elements)            
    end
    iter(size, col)
  end
end