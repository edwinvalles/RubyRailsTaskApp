require 'test_helper'

class EntryTest < ActiveSupport::TestCase
 
  def setup
    entry = Entry.create(name: 'Task', details: 'Need to do this')
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
    entry = Entry.create(name: 'Happy', details: 'Task')
    assert entry.save, 'No details'
  end

end
