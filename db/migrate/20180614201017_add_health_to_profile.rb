class AddHealthToProfile < ActiveRecord::Migration[5.2]
  def change
    change_column_default :profiles, :health, 100
  end
end
