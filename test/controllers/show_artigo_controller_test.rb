require 'test_helper'

class ShowArtigoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_artigo_index_url
    assert_response :success
  end

end
