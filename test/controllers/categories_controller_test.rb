require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    setup do
        @category = categories(:one)
    end 

    test 'should get new' do
        get new_category_path
        assert_response :success
    end

    test 'should get create' do
        get categories_path(:id => @category.id )
        assert_response :success
    end

    test 'should get show' do
        get category_path(:id => @category.id )
        assert_response :success
    end

    test 'should get edit' do
        get edit_category_path(:id => @category.id )
        assert_response :success
    end

end