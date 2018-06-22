class AddUserIdToDaily < ActiveRecord::Migration[5.2]
  def change
    add_column :dailies, :user_id, :integer
  end
end
