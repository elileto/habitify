class CreateListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :list_items do |t|
      t.boolean :complete
      t.string :task
      t.integer :counter
      t.integer :difficultyLvl
      t.integer :experiencePoints

      t.timestamps
    end
  end
end
