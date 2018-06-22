class RenameListItemToToDoListItem < ActiveRecord::Migration[5.2]
    def change
      rename_table :list_items, :todo_list_items
    end
  
end
