class CreateCelebs < ActiveRecord::Migration
  def change
    create_table :celebs do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.integer :celeb_category_id

      t.timestamps
    end
  end
end
