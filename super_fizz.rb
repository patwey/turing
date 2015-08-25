# clear
(1..1000).each do |n|
  if n % 3 == 0 && n % 5 == 0 && n % 7 == 0
    puts 'SuperFizzBuzz'
  elsif n % 3 == 0 && n % 7 == 0
    puts 'SuperFizz'
  elsif n % 5 == 0 && n % 7 == 0
    puts 'SuperBuzz'
  elsif n % 3 == 0
    puts 'Fizz'
  elsif n % 5 == 0
    puts 'Buzz'
  elsif n % 7 == 0
    puts 'Super'
  else
    n
  end
end

# concise
(1..1000).each do |n|
  output = ''
  output += 'Super' if n % 7 == 0
  output += 'Fizz' if n % 3 == 0
  output += 'Buzz' if n % 5 == 0
  output = n.to_s if output == '' || output == 'FizzBuzz'
  puts output
end
