class CreateGuestLists < ActiveRecord::Migration
  def change
    create_table :guest_lists do |t|
      t.string :name
      t.string :email
      t.integer :adults
      t.integer :children
      t.text :comment

      t.timestamps
    end
  end
end
