require 'rails_helper'

describe "Viewing an individual project" do
	it "shows the project's details" do
		project = Project.create(project_attributes(target_pledge_amount: 100.00))

		visit project_url(project)

		expect(page).to have_text(project.name)
		expect(page).to have_text(project.description)
		expect(page).to have_text("$100.00")
		expect(page).to have_text(project.website)
	end

	it "shows the nubmer of days remaining if the pledging end date is in the future" do
		project = Project.create(pledging_ends_on: 5.days.from_now)

		visit project_url(project)

		expect(page).to have_text("5 days remaining")
	end

	it "shows 'All Done!' if the pledging end date is in the past" do
		project = Project.create(pledging_ends_on: 2.days.ago)

		visit project_url(project)

		expect(page).to have_text("All Done!")
	end
end

