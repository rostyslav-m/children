class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :name_gender

      t.timestamps null: false
    end
  end
end
