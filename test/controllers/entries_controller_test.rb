require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @entry = entries(:one)
    end

    test 'should get new' do
        get new_category_entry
        assert_response :success
    end 

end