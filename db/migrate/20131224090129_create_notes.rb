class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :book_id
      t.integer :user_id
      t.text :text

      t.timestamps
    end
  end
end
