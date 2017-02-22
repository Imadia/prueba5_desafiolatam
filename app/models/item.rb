class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  #validates :serial, uniqueness: true
  scope :filter_size, -> (size) { where("size=?", size)}
  scope :unassigned, -> { where(user_id: nil) }

 

end
