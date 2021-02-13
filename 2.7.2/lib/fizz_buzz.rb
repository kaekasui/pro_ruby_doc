def fizz_buzz(num)
  return p 'Fizz Buzz' if num % 15 == 0
  return p 'Fizz' if num % 3 == 0
  return p 'Buzz' if num % 5 == 0

  p num.to_s
end

fizz_buzz(2)
fizz_buzz(3)
fizz_buzz(4)
fizz_buzz(5)
fizz_buzz(6)
fizz_buzz(15)
