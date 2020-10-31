class CreateBbts < ActiveRecord::Migration
  def change
    create_table :bbts do |t|
      t.string :name
      t.string :bubble
      t.string :brand
      t.string :sugar_amount
      t.string :size
      t.string :temp
      t.integer :user_id
    end
  end
end
