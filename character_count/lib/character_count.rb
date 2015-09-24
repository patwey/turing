def count_characters(characters)
  character_count = Hash.new(0)
  characters.each do |letter|
    character_count[letter] += 1
  end
  character_count
end


if $PROGRAM_NAME == __FILE__ # If I'm running this program
  input_string = ARGV[0]

  characters = input_string.split('')
  character_count = count_characters(characters)

  character_count.each_pair do |letter, count|
    puts "#{letter}: #{count}"
  end
end
