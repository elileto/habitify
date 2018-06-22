class Daily < ApplicationRecord
    belongs_to :user
    has_many :listItems
end
