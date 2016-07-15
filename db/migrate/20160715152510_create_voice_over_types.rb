class CreateVoiceOverTypes < ActiveRecord::Migration
  def change
    create_table :voice_over_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
