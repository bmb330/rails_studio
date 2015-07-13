class Registration < ActiveRecord::Base
	HOW_HEARD_OPTIONS = [
		'Newsletter',
		'Blog Post',
		'Twitter',
		'Web Search',
		'Friend/Coworker',
		'Other'
	]

	validates :name, prsence: true
	validates :email, format: { with: /(\S+)@(\S+)/ }
	validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }

  belongs_to :event
end
