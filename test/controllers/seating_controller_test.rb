require 'test_helper'

class SeatingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seating_index_url
    assert_response :success
  end

end
