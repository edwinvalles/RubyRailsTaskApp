class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.text :details

      t.datetime :deadline
      t.datetime :started_at
      t.datetime :completed_at

      t.boolean :started, default: false, null: false
      t.boolean :completed, default: false, null: false

      t.integer :category_id

      t.timestamps
    end

    add_index :entries, :category_id 
  end
end
