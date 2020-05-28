arr = [11,27,3,49,62,77,8,99]
arr = arr.sort

# find index of 8

def binary_search(arr, l, r, n)

  if arr.length > 1

    middle = l + (r - l) / 2

    # If element is present at middle
    if arr[middle] == n
      return middle
    # If element is smaller than middle than it is present in left sub array
    elsif n < arr[middle]
      return binary_search(arr, l, middle-1, n)
    # If element is larger than middle than it is present in right sub array
    else n > arr[middle]
      return binary_search(arr, middle+1, r, n)
    end

  end

end

n = 8

p "Index of: #{n} is #{binary_search(arr, 0, (arr.length)-1, n)}"

# Expected index output: 1