require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest

    setup do
        # @user = users(:one)
        # post new_user_session_path
        @entry = entries(:default)
        @category = categories(:two)
    end

    test 'should get index' do
        get category_entries_path(@category, @entry)
        assert_response :success
    end

    test 'should get new' do
        get new_category_entry_path(@category, @entry)
        assert_response :success
    end 

    test "should create entry" do
        post category_entries_path(@category, @entry), params: { entry: {name: 'task one', details: 'must do this', category_id: 5} }
        
        # assert_difference 'Entry.count', 1 do
        assert_response :redirect
        # end

        # assert_redirected_to category_entries_path
    end

end