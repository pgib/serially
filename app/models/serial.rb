class Serial < ActiveRecord::Base

	validates_presence_of :serial, :product, :reg_date
	
	validates_format_of :reg_date, :with => /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/
	
	
	# validates_length_of :title, :minimum => 5
end
