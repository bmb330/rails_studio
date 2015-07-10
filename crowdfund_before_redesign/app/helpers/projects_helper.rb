module ProjectsHelper
	def format_pledging_ends_on(project)
		if project.pledging_expired?
			content_tag(:strong, "All Done!")
		else
			distance_of_time_in_words_to_now(project.pledging_ends_on) + " remaining"
		end
	end

	def image_for(project)
		image_tag(project.image_file_name.blank? ? "placeholder.png" : project.image_file_name)
	end
end
