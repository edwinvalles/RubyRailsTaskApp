require 'test_helper'

class ShowCategoryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one )
    end

    test 'should go to show category form' do
        get show_category(:id => @category.id )
        assert_response :success
    end

    test 'should have a name' do
        get show_category(:id => @category.id )
        assert_response :success
    end

end