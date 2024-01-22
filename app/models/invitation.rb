class Invitation < ApplicationRecord
  validates :name, presence: true

  scope :sorted, -> { order(created_at: :desc) }
end
