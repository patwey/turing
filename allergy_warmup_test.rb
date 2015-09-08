require 'minitest'
require_relative 'allergy_warmup'

class AllergyTest < Minitest::Test
  def test_it_is_allergic_to_eggs
    allergy_num = 1
    allergies = get_allergies(allergy_num)

    assert_equal ['eggs'], allergies
  end

  def test_it_is_allergic_to_peanuts
    allergy_num = 2
    allergies = get_allergies(allergy_num)

    assert_equal ['peanuts'], allergies
  end

  def test_it_is_allergic_to_shellfish
    allergy_num = 4
    allergies = get_allergies(allergy_num)

    assert_equal ['shellfish'], allergies
  end

  def test_it_is_allergic_to_strawberries
    allergy_num = 8
    allergies = get_allergies(allergy_num)

    assert_equal ['strawberries'], allergies
  end

  def test_it_is_allergic_to_tomatoes
    allergy_num = 16
    allergies = get_allergies(allergy_num)

    assert_equal ['tomatoes'], allergies
  end

  def test_it_is_allergic_to_chocolate
    allergy_num = 32
    allergies = get_allergies(allergy_num)

    assert_equal ['chocolate'], allergies
  end

  def test_it_is_allergic_to_pollen
    allergy_num = 64
    allergies = get_allergies(allergy_num)

    assert_equal ['pollen'], allergies
  end

  def test_it_is_allergic_to_cats
    allergy_num = 128
    allergies = get_allergies(allergy_num)

    assert_equal ['cats'], allergies
  end

  def test_it_is_allergic_to_cats_and_pollen
    allergy_num = 192
    allergies = get_allergies(allergy_num)

    assert_equal ['cats', 'pollen'], allergies
  end

  def test_it_is_allergic_to_cats_and_chocolate
    allergy_num = 160
    allergies = get_allergies(allergy_num)

    assert_equal ['cats', 'chocolate'], allergies
  end
  
  def test_it_has_all_allergies
    allergy_num = 255
    allergies = get_allergies(allergy_num)
    all_allergies = ['cats', 'pollen', 'chocolate', 'tomatoes', 'strawberries', 'shellfish', 'peanuts', 'eggs']

    assert_equal all_allergies, allergies
  end
end
