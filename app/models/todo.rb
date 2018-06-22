class Todo < ApplicationRecord
    belongs_to :user
    has_many :todo_list_items, dependent: :destroy
    
    accepts_nested_attributes_for :todo_list_items
end
