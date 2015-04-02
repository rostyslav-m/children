class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name_cat

      t.timestamps null: false
    end
  end
end
