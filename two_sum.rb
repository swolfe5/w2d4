def okay_two_sum?(arr, target)
  higher = 0
  lower = 0
  start = Time.now
  arr.sort!
  arr.each_with_index do |el, i|
    if el >= target / 2
      higher = i
      lower = i - 1
      return false if i < 0
      break
    end
  end

  while lower > 0 && higher < arr.size
    sum = arr[lower] + arr[higher]
    return true if sum == target
    sum < target ? higher += 1 : lower -= 1
  end
  finish = Time.now
  p finish - start
  false
end


def brute_force(arr, target)
  i = 0
  start = Time.now
  while i < arr.size - 1
    j = i +1
    while j < arr.size
      return true if arr[i] + arr[j] == target
      j+=1
    end
    i+=1
  end
  finish = Time.now
  p finish - start
  return false
end

def hash_map(arr, target)
  hash = {}
  arr.each do |el|
    half = target - el
    return true if hash[-1]
    p hash
    hash[el] = half
     
    p hash[half]
  end
  return false
end
