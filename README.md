# Data Mapper Drupal
https://rubygems.org/gems/drupal83

Help you to migrate Drupal (php) to a Ruby web project ;)

WARNIG :: 
for now you can use this gem only with a 6.1.* Drupal site.
we plan to manage Drupal 7 site in future version

## Dependencies
 datamapper sources http://datamapper.org/

## Credit
original gem https://github.com/quinn/dm-drupal

## Installation

Add this line to your application's Gemfile:

    gem 'drupal83'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install drupal83

## Usage

	require 'rubygems'
	require 'data_mapper' # requires all the gems listed above
	require 'drupal'

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


