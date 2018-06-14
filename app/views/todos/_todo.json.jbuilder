json.extract! todo, :id, :dueDate, :created_at, :updated_at
json.url todo_url(todo, format: :json)
