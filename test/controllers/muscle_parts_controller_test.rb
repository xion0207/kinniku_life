require "test_helper"

class MusclePartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get muscle_parts_index_url
    assert_response :success
  end

  test "should get show" do
    get muscle_parts_show_url
    assert_response :success
  end
end
