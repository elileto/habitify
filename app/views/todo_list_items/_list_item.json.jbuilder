json.extract! todo_list_item, :id, :complete, :task, :counter, :difficultyLvl, :experiencePoints, :created_at, :updated_at
json.url todo_list_item_url(todo_list_item, format: :json)
