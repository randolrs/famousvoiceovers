class CreateAuditions < ActiveRecord::Migration
  def change
    create_table :auditions do |t|
      t.integer :gig_id
      t.integer :user_id
      t.string :comments

      t.timestamps
    end
  end
end
