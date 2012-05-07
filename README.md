# Data Mapper Drupal

Help in you Drupal Migration ;)
credit : https://github.com/quinn/dm-drupal

## Installation

Add this line to your application's Gemfile:

    gem 'dm-drupal2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dm-drupal2

## Usage

	require 'rubygems'
	require 'active_record'
	require 'data_mapper' # requires all the gems listed above

	require 'dm-core'
	require 'dm-drupal2'

	puts "ready"

	DataMapper.setup(:drupal, 'postgres://postgres:password@localhost/database')
	 
	Drupal::Node.all.each do |n|
		puts "Title : #{n.title}"
	end

	Drupal::User.all.each do |u|
		puts "User : #{u.name}"
		# u.profile
		# u.mail
		# u.nodes
	end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


