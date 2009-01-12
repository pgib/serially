class Serial < ActiveRecord::Base

	validates_presence_of :serial, :product, :reg_date
	# validates_length_of :title, :minimum => 5
end
