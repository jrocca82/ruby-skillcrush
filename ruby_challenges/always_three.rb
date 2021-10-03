puts "Give me a number"

userNum = gets.to_i

finalNum = userNum

finalNum+=5
finalNum*=2
finalNum-=4
finalNum/=2
finalNum -= userNum

puts "Always #{finalNum}"
