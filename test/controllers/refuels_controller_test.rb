require "test_helper"

class RefuelsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get refuels_show_url
    assert_response :success
  end

  test "should get edit" do
    get refuels_edit_url
    assert_response :success
  end
end
