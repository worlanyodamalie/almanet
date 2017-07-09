require 'test_helper'

class MembershipdataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get membershipdata_index_url
    assert_response :success
  end

end
