class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :title
      t.text :description
      t.text :script
      t.decimal :price_gig, :precision => 8, :scale => 2
      t.decimal :price_audition, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
