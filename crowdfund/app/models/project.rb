class Project < ActiveRecord::Base
	def pledging_expired?
		pledging_ends_on < Time.now
	end
end
