class AddProfessionalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_voiceover_professional, :boolean, :default => false
  end
end
