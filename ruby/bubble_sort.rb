def bubble_sort(arr)
  sort_count = nil
  until sort_count == 0
    sort_count = 0
    arr.each.with_index do |el, idx|
      # skips the last element of the array
      next if idx + 1 == arr.length
      case arr[idx] <=> arr[idx + 1]
      when -1 || 0
        next
      when 1
        sort_count += 1
        arr[idx] = arr[idx + 1]
        arr[idx + 1] = el
      end
    end
  end
  arr
end

def bubble_sort_with_proc(arr, &prc)
  sort_count = nil
  until sort_count == 0
    sort_count = 0
    arr.each.with_index do |el, idx|
      next if idx + 1 == arr.length
      case prc.call(arr[idx], arr[idx + 1])
      when -1 || 0
        next
      when 1
        sort_count += 1
        arr[idx] = arr[idx + 1]
        arr[idx + 1] = el
      end
    end
  end
  arr
end
