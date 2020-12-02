require "application_system_test_case"

class CategoriesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit categories_path
  
    assert_selector "h1", text: "Categories"
  end

  test 'creating a category' do
    visit categories_path

    click_on 'New Category'

    fill_in 'Name', with: 'Personal'

    click_on 'Create Category'

    assert_test 'Creating a category'
  end

  test 'showing a category' do
    visit categories_path

    click_on 'Show'

    assert_test 'Showing a category'
  end

end
