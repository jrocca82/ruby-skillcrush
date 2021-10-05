puts "Give me a number"
userNum = gets.to_i

def always_three(number)
  (((number + 5) * 2 - 4) / 2 - number)
end

puts "Always " + always_three(userNum).to_s
