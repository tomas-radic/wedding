class Invitation < ApplicationRecord
  validates :name, presence: true
  validates :nr_persons,
            presence: true,
            numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 4 }

  scope :sorted, -> { order(created_at: :desc) }
end
