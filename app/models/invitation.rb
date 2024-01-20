class Invitation < ApplicationRecord
  validates :name, presence: true

  scope :sorted, -> { order(accepted: :desc, updated_at: :desc) }
end
