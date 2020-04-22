def  bubble_sort(arr)
  is_sorted = false
  length_to_sort = arr.length-1
  debug = 0
  while !is_sorted
    is_sorted = true

    (0...length_to_sort).each do |n|
      if arr[n] > arr[n+1]
        arr[n], arr[n+1] = arr[n+1], arr[n]   #swap the contents of two indexes
        is_sorted = false
      end
      puts "iteration_#{n}: #{arr}"
    end
    # debug += 1
    # puts "iteration_#{debug}: #{arr}"
  end
  return arr
end

puts bubble_sort([4,7,0,10,1])