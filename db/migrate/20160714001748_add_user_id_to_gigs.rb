class AddUserIdToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :user_id, :integer
    add_column :gigs, :celeb_id, :integer
    add_column :gigs, :actor_id, :integer
  end
end
