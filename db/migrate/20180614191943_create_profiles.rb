class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :rubies
      t.integer :gender
      t.integer :experience
      t.integer :level
      t.integer :health
      t.timestamps
    end
  end
end
