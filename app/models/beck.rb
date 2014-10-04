class Beck < ActiveRecord::Base
	belongs_to :users
	default_scope -> { order('date DESC') }
end
