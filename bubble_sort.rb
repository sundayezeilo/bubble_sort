def bubble_sort(arr)
  length_to_sort = arr.length - 1
  1.upto(arr.length - 1) do
    n = 0
    until n >= length_to_sort
      arr[n], arr[n + 1] = arr[n + 1], arr[n] if arr[n] > arr[n + 1]
      n += 1
    end
    length_to_sort -= 1 # for Array sort optimization. Number of iteration reduces as sorting increases.
  end
  arr
end

def bubble_sort_by(arr)
  length_to_sort = arr.length - 1
  1.upto(arr.length - 1) do
    n = 0
    until n >= length_to_sort
      sort_order = yield(arr[n], arr[n + 1])
      if sort_order.positive?
        # arr[n], arr[n + 1] = arr[n + 1], arr[n]
        copy = arr[n]
        arr[n] = arr[n + 1]
        arr[n + 1] = copy
      end
      n += 1
    end
    length_to_sort -= 1 # for Array sort optimization. Number of iteration reduces as sorting increases.
  end
  arr
end

num_arr = [4, 7, 0, 10, 1]
puts bubble_sort(num_arr).to_s

str_arr = %w[hello hi Ken Mayor Welcome!]
sorted_str = bubble_sort_by(str_arr) { |x, y| x.length <=> y.length }
puts sorted_str.to_s
