def fibs(number)
  fibonacci = [0, 1]
  (2...number).each do |n|
    fibonacci[n] = fibonacci[n - 1] + fibonacci[n - 2]
  end
  fibonacci[0, number]
end

def fibs_rec(number)
  return [] if number == 0
  return [0] if number == 1
  return [0, 1] if number == 2

  array = fibs_rec(number - 1)
  array << array[-2] + array[-1]
end
