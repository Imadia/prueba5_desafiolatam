class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true
  scope :filter_size, -> (size) { where("size=?", size)}
  scope :unassigned, -> { where(user_id: nil) }
  after_destroy :delete_categories

	def delete_categories
	 	Category.all.each do |category|
	 		unless category.items.any?
	 			category.destroy
	 		end
	 	end
	end


 

end
