require "byebug"
def sub_sum1(array)
  sub_arrays = []
  i = 0

  while i < array.size #n^2
    sub_arrays << [array[i]]
    j = i + 1
    while j < array.size
      sub_arrays << array[i..j]
      j += 1
    end
    i += 1
  end
  max = nil
  sub_arrays.each do |array|    #2 ^ n
    temp = array.inject { |sum, i| sum + i } #n
    max = temp if max.nil? || temp > max
  end
  max
end
#O(2^n)



def sub_sum2(array)
  max = 0

  save_max = -1000000
  i = 0
  while i < array.size
    max = max + array[i-1]
    if max > save_max
      save_max = max
      i += 1
    else
      max = 0
       i+=1
    end
  end

  save_max
end

 p sub_sum2([2, 3, -6, 7, -6, 7])
