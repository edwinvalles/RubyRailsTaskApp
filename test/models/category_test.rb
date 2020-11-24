require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'should not save category without name' do
    category = Category.new
    assert_not category.save, 'Saved without name'
  end

  test 'name should be unique' do
    category = Category.new
    assert_not category.save, 'Name already exists'
  end

  test 'must have id params' do
    category = Category.find(params[:id])
    assert_not category.show, 'Entry does not exist'
  end

end
