require "byebug"
def my_min1(array)
  start = Time.now
  i = 0
    while i < array.size - 1
      j = i + 1
      while j < array.size
        if array[j] < array[i]
          i = j
        end
        j += 1
      end
      finish = Time.now
      p finish - start
      return array[i]
    end
end

def my_min2(array)
  start = Time.now
  min = array.first
  array.each do |num|
    min = num if num < min
  end
  finish = Time.now
  p finish - start
  min
end
