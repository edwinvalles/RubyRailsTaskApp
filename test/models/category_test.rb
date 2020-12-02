require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    category = Category.create(name: 'Name', description: 'Tasks' )
  end

  test 'should not save category without name' do
    category = Category.new
    assert_not category.save, 'Saved without name'
  end

  test 'name should be unique' do
    category = Category.new
    assert_not category.save, 'Name already exists'
  end

  test 'should not save category without description' do 
    category = Category.new
    assert_not category.save, 'No description'
  end

  test 'should save category with valid params' do
    category = Category.create(name: 'Happy', description: 'Paths' )
    assert category.save
  end

end
