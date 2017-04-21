def binary_search
  list = [30, 49, 50, 66, 84, 88, 91, 99, 120, 142, 149, 160]
  search_value = 66
  lower_bound = 0
  upper_bound = list.length - 1

  if list[lower_bound] > search_value
    return false

  elsif list[upper_bound] < search_value
    return false
  end

  while lower_bound <= upper_bound
    middle_position = lower_bound + (upper_bound - lower_bound) /2

    if list[middle_position] == search_value
      return middle_position

    elsif list[middle_position] < search_value
      lower_bound = middle_position + 1

    else
      upper_bound = middle_position - 1


    end
  end
  return false
end

p binary_search
