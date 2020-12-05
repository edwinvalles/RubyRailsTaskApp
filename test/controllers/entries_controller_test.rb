require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one)
        @entry = entries(:one)
        get category_entries_path(@category.entries)
    end

    test 'should get new' do
        get new_category_entry_path(@category.entry)
        assert_response :success
    end 

end