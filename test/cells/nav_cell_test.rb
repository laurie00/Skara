require 'test_helper'

class NavCellTest < Cell::TestCase
  test "justifiedList" do
    invoke :justifiedList
    assert_select "p"
  end
  

end
