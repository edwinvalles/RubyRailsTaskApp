require 'test_helper'

class EditCategoryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one )
    end

    test 'should go to edit category form and update' do
        get edit_category_entry(:id => @category.id )
        assert_response :success
        assert_changes '@category.name' do
            put update_category_entry(:id => @category.id ),  params: { category: {name: 'Sample again' } }
            @category.reload
            assert_response :redirect
        end
        follow_redirect!
        assert_response :success
    end

end