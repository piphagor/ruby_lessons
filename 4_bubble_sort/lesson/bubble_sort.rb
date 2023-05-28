def bubble_sort(array)
  array.each_with_index do |_, i|
    (i...array.length).each do |j|
      if array[i] > array[j]
        tmp = array[i]
        array[i] = array[j]
        array[j] = tmp
      end
    end
  end
end
