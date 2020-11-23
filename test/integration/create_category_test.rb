require 'test_helper'

class CreateCategoryTest < ActionDispatch::IntegrationTest
    test 'should go to new category form and create category' do
        get new_category_url
        assert_response :success

        post create_category_path, params: { category: { name: '' } }
        assert_response :redirect

        follow_redirect!
        assert_response :success
    end
end