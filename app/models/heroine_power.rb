class HeroinePower < ApplicationRecord
  belongs_to :heroine
  belongs_to :power
  validates :strength, inclusion: { in: %w(Strong Weak Average), message: "%{value} is not a valid strength" }
  validates_uniqueness_of :power_id, scope: :heroine_id
    # %w(Strong Weak Average)
    # ["strong", "weak", "average"]
end
