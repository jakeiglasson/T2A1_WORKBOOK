arr = [11,27,3,49,62,77,8,99]
arr = arr.sort
p arr

# find index of 8

def linear_search(arr, l, r, n)

  if l != 0 || r != -1
    arr = arr[l..r]
  end

  arr.each_with_index { |val, index|
    if val == n
      p "Index of: #{n} is #{index}"
      return index
    end
  }

  # If the search reaches this point value is not in list or defined range
  p "Value given not in supplied array or range"
  return nil

end

n = 99
l = 0
r = -1

x = linear_search(arr, l, r, n)
p x

# Expected index output: 7

n = 1
l = 0
r = -1

x = linear_search(arr, l, r, n)
p x

# Expected output: nil