require 'test_helper'

class HomepageviewerCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  

end
