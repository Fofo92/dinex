class Body < ApplicationRecord
  validates :long_name, presence: true, uniqueness: true
  validates :short_name, presence: true
  has_ancestry
  has_many :users
end
