class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
  	self.review.user.firstname + " " + self.review.user.lastname 
  end

end
