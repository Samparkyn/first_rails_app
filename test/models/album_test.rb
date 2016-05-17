require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "has a name" do
    assert_equal("Escapology", albums(:one).name)
  end

  test "album has an artist" do
    assert_equal(artists(:one), albums(:one).artist)
  end
end
