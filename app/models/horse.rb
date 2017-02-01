class Horse < ApplicationRecord
  scope :recent, -> { order("created_at DESC").limit(5) }
  belongs_to :user

  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true

end
