require 'test_helper'

class EntryTest < ActiveSupport::TestCase
 
  setup do
    @category = Category.create(name: 'Category', description: 'Testing')
  end
  
  test 'name should be unique' do
    entry = Entry.new
    assert_not entry.save, 'Name already exists'
  end

  test 'should not save entry without details' do
    entry = Entry.new
    assert_not entry.save, 'No details'
  end

  test 'should save entry with valid params' do
    entry = Entry.new(name: 'Happy', details: 'Paths', category_id: @category.id )
    assert entry.save, 'No details'
  end

end
