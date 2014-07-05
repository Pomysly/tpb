class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :title
  validates_presence_of :price, :description
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }

   def average_rating
   	if self.reviews.size > 0
   		self.reviews.average(:rating) 
   	else
        undefined
    end
   end
end
