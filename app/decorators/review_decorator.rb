class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
  	unless user == nil
  	self.review.user.firstname + " " + self.review.user.lastname 
  else
  	"anonymous"
  	end


  end

end
