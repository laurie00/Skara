require 'test_helper'

class FurnitureCellTest < Cell::TestCase
  test "index" do
    invoke :index
    assert_select "p"
  end
  

end
