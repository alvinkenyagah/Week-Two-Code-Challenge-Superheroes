class HeroPower < ApplicationRecord
  belongs_to :power
  belongs_to :hero

  validates :strength, inclusion: { in: ['Strong', 'Weak', 'Average'], message: "must be one of 'Strong', 'Weak', or 'Average'" }, presence: true

end
