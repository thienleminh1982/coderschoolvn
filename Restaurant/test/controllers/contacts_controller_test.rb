require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  test "should get contactus" do
    get :contactus
    assert_response :success
  end

end
