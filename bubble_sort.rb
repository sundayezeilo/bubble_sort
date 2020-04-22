def bubble_sort(arr)
  yield(arr) if block_given?
  arr
end

unsorted_arr = [4, 7, 0, 10, 1]

sorted = bubble_sort(unsorted_arr) do |arr|
  is_sorted = false
  length_to_sort = arr.length - 1
  while is_sorted == false
    is_sorted = true
    n = 0
    until n == length_to_sort
      if arr[n] > arr[n + 1]
        arr[n], arr[n + 1] = arr[n + 1], arr[n]
        is_sorted = false
      end
      n += 1
    end
    length_to_sort -= 1
  end
end

puts sorted.to_s
