ALLERGY_REF = {
  'cats' => 128,
  'pollen' => 64,
  'chocolate' => 32,
  'tomatoes' => 16,
  'strawberries' => 8,
  'shellfish' => 4,
  'peanuts' => 2,
  'eggs' => 1
}
# get allergy number
# for each pair in the allergy hash:
# => check if you can subtract the value from the number
# => if you can,
# => => add the key to their collection of allergies
# => => set number equal to the number minus the value'

def get_allergies(number)
  allergies = []
  ALLERGY_REF.each do |k, v|
    if number - v >= 0
      allergies << k
      number -= v
    end
  end
  allergies # returns an array of strings
end

allergies = get_allergies(128 + 32 + 4 + 8)
puts allergies
