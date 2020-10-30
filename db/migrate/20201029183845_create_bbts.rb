class CreateBbts < ActiveRecord::Migration
  def change
    create_table :bbts do |t|
      t.string :name
      t.string :size
      t.string :type
      t.integer :user_id
      t.integer :friend_id
    end
  end
end
