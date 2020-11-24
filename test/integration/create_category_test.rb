require 'test_helper'

class CreateCategoryTest < ActionDispatch::IntegrationTest
    test 'should go to new category form' do
        get new_category_path
        assert_response :success
    end

    test 'should create new category' do
        post create_category_path, params: { category: { name: 'sample' } }
        assert_response :redirect
        
        follow_redirect!
        assert_response :success
    end

end