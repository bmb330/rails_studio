# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create!([
	{
		name: "Project A",
		description: "Project A which of courses is the best one to give money to.",
		target_pledge_amount: 500.00,
		pledging_ends_on: 50.days.from_now,
		website: "http://project-a.com/"
	},
	{
		name: "Project B",
		description: "Another good project to give money too.",
		target_pledge_amount: 300.00,
		pledging_ends_on: 70.days.from_now,
		website: "http://project-b.com/"
	},
	{
		name: "Project C",
		description: "The next best project to pledge your money to.",
		target_pledge_amount: 100.00,
		pledging_ends_on: 15.days.from_now,
		website: "http://project-c.com/"
	}
])
