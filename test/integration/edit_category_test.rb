require 'test_helper'

class EditCategoryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one)
    end

    test 'should go to edit category form and update' do
        get edit_category_path(:id => @category.id)
        assert_response :success

        assert_changes '@category.name' do
            put category_path(:id => @category.id), params: { category: {name: 'Sample again' } }
            @category.reload
            assert_response :redirect
        end
        
        follow_redirect!
        assert_response :success
    end

    test 'should get delete' do 
        get edit_category_path(:id => @category.id)
        assert_response :success

        assert_difference 'Category.count', -1 do
            delete category_path(:id => @category.id)
            assert_response :redirect
        end

        follow_redirect!
        assert_response :success
    end

end