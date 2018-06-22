class AddDailyIdToListItem < ActiveRecord::Migration[5.2]
  def change
    add_column :list_items, :daily_id, :integer
  end
end
