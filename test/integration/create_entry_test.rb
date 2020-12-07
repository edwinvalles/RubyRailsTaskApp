require 'test_helper'

class CreateEntryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:two)
        @entry = entries(:default)
        @entries = Entry.all
    end

    test 'should go to new entry and create entry' do
        get new_category_entry_path(@category, @entry), params: { entry: {name: 'Sampler Task', details: 'Sampler Details', category_id: 1} }
        assert_response :success
        
        assert_difference 'Entry.count',1 do 
            post category_entries_path(@category, @entry), params: { entry: {name: 'Sample Task', details: 'Sample Details', category_id: 2} }
            assert_response :redirect
        end

        follow_redirect!
        assert_response :success
    end

end