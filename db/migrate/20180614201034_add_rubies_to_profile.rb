class AddRubiesToProfile < ActiveRecord::Migration[5.2]
  def change
    change_column_default :profiles, :rubies, 0
  end
end
