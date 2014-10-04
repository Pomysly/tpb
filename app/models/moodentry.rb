class Moodentry < ActiveRecord::Base
	belongs_to :users
	default_scope -> { order('date') }
end
