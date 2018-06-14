class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.date :dueDate

      t.timestamps
    end
  end
end
