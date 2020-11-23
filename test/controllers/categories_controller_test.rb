require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
    test 'should get new' do
        get new_category_url
        assert_response :success
    end
end