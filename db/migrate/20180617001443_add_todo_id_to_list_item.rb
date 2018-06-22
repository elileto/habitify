class AddTodoIdToListItem < ActiveRecord::Migration[5.2]
  def change
    add_column :list_items, :todo_id, :integer
  end
end
