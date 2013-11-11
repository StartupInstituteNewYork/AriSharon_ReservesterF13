# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Rest.create!([
	{
		name: 'Pizza Place',
		description: 'Fresh hot cheesy pizza!',
		address: '1 Pennsylvania Plaza New York',
		phone_number: 123_123_1234
	},
	{
		name: 'Big Burger',
		description: 'Best burger in the financial district!',
		address: '160 Broadway New York',
		phone_number: 123_133_1234
	},
	{
		name: 'Chillin\' Chilis',
		description: 'Fresh chili!',
		address: '425 Washington Blvd  Jersey City, NJ 07310',
		phone_number: 113_123_1234
	},
	{
		name: 'Luscious Lasagna',
		description: 'Fresh lasagna!',
		address: '423 Street',
		phone_number: 183_123_1234
	},
	{
		name: 'Slurpin\' Spaghetti',
		description: 'Fresh spaghetti!',
		address: '696 Avenue of the Americas New York',
		phone_number: 193_123_1234
	}
])