class Profile < ApplicationRecord
    enum gender: {undisclosed: 0, female: 1, male: 2, other: 3}
    validates :gender, presence: true, inclusion: {in: genders.keys } #numericality: { greater_than_or_equal_to: 0, only_integer: true }
    belongs_to :user
end
  