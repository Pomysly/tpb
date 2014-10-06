class Moodentry < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('date DESC') }
end
