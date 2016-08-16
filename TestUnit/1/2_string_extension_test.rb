require 'test/unit'
require 'string_extension'


# ruby -I. 2_string.....rb
# -I mean specify load path
# . this little dot main current folder
class StringExtensionTest < Test::Unit::TestCase

  def test_is_number
    assert '54'.is_number?
  end


  def test_humanize_method_exists
    assert_respond_to 'blah', :humanize
  end


  def test_humanize_return_something
    assert_not_nil 'yo'.humanize, "humanize return nil"
  end


  def test_humanize
    assert_equal "Like my brain!", 'LIKE MY BRAIN!'.humanize
  end


  def test_just_brain
    assert_match /brain/, 'LIKE MY BRAIN!'.humanize
  end


  def test_zombie_in_humanize_raises_error
    assert_raise(RuntimeError) { "zombie".humanize }
    # excpeting get a runtimeerror
  end

end











