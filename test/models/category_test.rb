require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'should not save category without name' do
    category = Category.new
    assert category.save, 'Saved without name'
  end

  test 'name should be unique' do
    category = Category.new
    assert category.save, 'Name already exists'
  end

end
