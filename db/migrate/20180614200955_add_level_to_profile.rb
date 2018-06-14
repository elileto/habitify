class AddLevelToProfile < ActiveRecord::Migration[5.2]
  def change
    change_column_default :profiles, :level, 1
  end
end
