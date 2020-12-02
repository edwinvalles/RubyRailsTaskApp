require 'test_helper'

class CreateCategoryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one )
    end

    test 'should go to new category and create category' do
        get new_category_entry
        assert_response :success
        
        assert_difference 'Category.count',1 do 
            post create_category_entry, params: { category: {name: 'Sample Title', description: 'Sample Description'} }
            assert_response :redirect
        end

        follow_redirect!
        assert_response :success
    end

end