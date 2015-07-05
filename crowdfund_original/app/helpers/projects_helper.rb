module ProjectsHelper
	def format_pledge_ends_on(project)
		if project.ended?
			content_tag(:strong, "All Done!")
		else
			distance_of_time_in_words(Time.now, project.pledge_ends_on) + " remaining"
		end
	end
end
