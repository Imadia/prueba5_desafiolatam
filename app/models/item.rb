class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  validates :serial, uniqueness: true

end
