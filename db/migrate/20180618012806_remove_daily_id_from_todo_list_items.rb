class RemoveDailyIdFromTodoListItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :todo_list_items, :daily_id
  end
end
