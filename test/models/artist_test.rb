require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
    test "has a name" do
      assert_equal("Robbie Williams", artists(:one).name)
  end

  test "has albums" do
    assert_equal(1, artists(:one).albums.count)
  end
end
