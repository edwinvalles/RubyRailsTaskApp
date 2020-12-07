require 'test_helper'

class ShowEntryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:one)
        @entry = entries(:default)
        @entries = Entry.all
    end

    test 'should go to show entry form' do
        get category_entry_path(:category_id => @category.id, :id => @entry.id)
        assert_response :success
    end

end