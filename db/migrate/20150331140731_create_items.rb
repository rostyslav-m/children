class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|

      t.string   :title,       null: false
      t.text     :description
      t.integer  :category_id, null: false
      t.integer  :age,         null: false
      t.integer  :gender_id,   null: false
      t.integer  :user_id
      t.timestamps null: false
    end
    add_index :items, :title
    add_index :items, :description
    add_index :items, :age
    add_index :items, :category_id
    add_index :items, :gender_id 
  end
end
