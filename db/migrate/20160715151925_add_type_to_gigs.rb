class AddTypeToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :type, :string, :default => ""
  end
end
