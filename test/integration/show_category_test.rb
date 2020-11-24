require 'test_helper'

class ShowCategoryTest < ActionDispatch::IntegrationTest
    test 'should go to show category form' do
        get show_category_path
        assert_response :success
    end

    test 'should have an id params' do
        get show_category_path, params: { id: 1 }
        assert_response :redirect
        
        follow_redirect!
        assert_response :success
    end

end