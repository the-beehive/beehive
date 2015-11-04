require 'test_helper'

class ImageTest < ActiveSupport::TestCase

  test "must have image url" do
    image = Image.new(uploaded_file_file_name: "test")
    not_image = Image.new()
    assert image.save
    refute not_image.save
  end

end
