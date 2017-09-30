random_name = (0...8).map { (65 + rand(26)).chr }.join

5.times do
	User.create!(
		name:  random_name,
	)
end

users = User.all



puts "Seed finished"
puts "#{User.count} posts created"