require_relative '../lib/chisel.rb'

class ChiselTest < Minitest::Test
  def test_turns_markdown_into_html
    skip
  end

  def test_it_turns_chunks_with_leading_pound_signs_into_headers_of_that_level
    assert_equal "<h1>some header<h1>", Chisel.to_html("# some header")
    assert_equal "<h6>some header<h6>", Chisel.to_html("###### some header")
  end

  def test_everything_else_is_a_paragraph
    skip
  end

  def test_turns_words_wrapped_in_a_single_asterisk_into_emphasized_tags
    skip
  end

  def test_turns_words_wrapped_in_double_asterisks_into_strong_tags
    skip
  end

  def test_turns_ampersands_into_ampersand_amp_semicolon_for
    skip
  end
end
