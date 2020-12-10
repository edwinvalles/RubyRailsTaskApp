require 'test_helper'

class EditEntryTest < ActionDispatch::IntegrationTest

    def setup
        @category = categories(:two)
        @entry = entries(:default)
        @entries = Entry.all
    end

    test 'should go to edit entry form' do
        get edit_category_entry_path(:category_id => @category.id, :id => @entry.id)
        assert_response :success

        assert_changes '@entry.name' do
            put category_entry_path(:category_id => @category.id, :id => @entry.id), params: { entry: {name: 'Editing', details: 'Tasking', category_id: 2} }
            @entry.reload
            assert_response :redirect
        end

        follow_redirect!
        assert_response :success
    end

    test 'should get delete' do 
        get edit_category_entry_path(:category_id => @category.id, :id => @entry.id)
        assert_response :success

        assert_difference 'Entry.count', -1 do
            delete category_entry_path(:category_id => @category.id, :id => @entry.id)
            assert_response :redirect
        end

        follow_redirect!
        assert_response :success
    end

end
