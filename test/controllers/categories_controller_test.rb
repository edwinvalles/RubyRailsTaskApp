require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one)
    end 

    test 'should get new' do
        get new_category_entry
        assert_response :success
    end

    test 'should get create' do
        get create_category_entry
        assert_response :success
    end

    test 'should get show' do
        get show_category_entry(:id => @category.id )
        assert_response :success
    end

    test 'should get edit' do
        get edit_category_entry(:id => @category.id )
        assert_response :success
    end

end