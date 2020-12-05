require 'test_helper'

class ShowCategoryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one )
    end

    test 'should go to show category form' do
        get category_path(:id => @category.id )
        assert_response :success
    end

    test 'should have a name' do
        get category_path(:id => @category.id )
        assert_response :success
    end

end