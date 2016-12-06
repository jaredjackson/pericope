require "test_helper"

class AdditionalPericopeTest < Minitest::Test

  ############### testing phrase with reference: pericope is not found
  def test_1_text_before_first_corinthians
    sample_text = "This is some text about 1 Cor. 1:1."
    pericopes = Pericope.parse(sample_text)
    assert pericopes.any?, "No pericope found."
  end

  ################ testing same phrase but with text following reference: pericope is found
  def test_2_text_after_first_corinthians
    sample_text = "1 Cor. 1:1 testing for new pericopes."
    pericopes = Pericope.parse(sample_text)
    assert pericopes.any?, "Pericope found."
  end

  ################ testing same phrase as test #1 but with spelled out name: pericope is found
  def test_3_text_before_first_corinthians
    sample_text = "This is some text about 1 Corinthians 1:1."
    pericopes = Pericope.parse(sample_text)
    assert pericopes.any?, "No pericope found."
  end

  ################ testing same phrase as test #1 but with 1 Jn: pericope is found
  def test_5_text_before_first_john
    sample_text = "This is some text about 1 Jn. 1:1."
    pericopes = Pericope.parse(sample_text)
    assert pericopes.any?, "No pericope found."
  end


end
