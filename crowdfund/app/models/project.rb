class Project < ActiveRecord::Base
	def ended?
		Time.now > pledge_ends_on
	end
end
