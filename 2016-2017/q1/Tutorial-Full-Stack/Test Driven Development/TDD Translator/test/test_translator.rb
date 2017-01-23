require "minitest/autorun"
require "minitest/reporters"
require "./lib/translator"
Minitest::Reporters.use!

class TestTranslator < Minitest::Test

  # This is a simple, rather useless test to detect if the translator exists.
  def test_exists
    translator = Translator.new({ "hello" => "hola" })
    assert !translator.nil?, "Translator instance does not exist"
  end

  def test_forward_translate
    translator = Translator.new({ "hello" => "hola", "world" => "mundo" })
    expected = "hola mundo"
    actual = translator.translate_forward("hello world")
    assert_equal expected, actual, "did not translate 'hello world' correctly forward"
  end

  # Bonus: Add this test and the ability to translate in the reverse direction
  # of the dictionary.
  def test_reverse_translate
      translator = Translator.new({ "hello" => "hola", "world" => "mundo" })
      expected = "hello world"
      actual = translator.translate_reverse("hola mundo")
      assert_equal expected, actual, "did not translate 'hola mundo' correctly reverse"
  end

end
