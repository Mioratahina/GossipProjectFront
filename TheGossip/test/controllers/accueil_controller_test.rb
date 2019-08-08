require 'test_helper'

class AccueilControllerTest < ActionDispatch::IntegrationTest
  test "should get accueil" do
    get accueil_accueil_url
    assert_response :success
  end

end
