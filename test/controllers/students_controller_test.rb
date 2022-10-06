require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get students_list_url
    assert_response :success
  end
end
