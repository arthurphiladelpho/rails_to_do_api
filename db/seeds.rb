random_name = (0...8).map { (65 + rand(26)).chr }.join
random_title = (0...9).map { (70 + rand(26)).chr }.join
random_body = (0...28).map { (80 + rand(26)).chr }.join
5.times do
	User.create!(
		name:  random_name
	)
end

users = User.all

5.times do
	List.create!(
		title:  random_name,
		private: true,
		user_id: User.first.id
	)
end

5.times do
	Item.create!(
		body:  random_name,
		list_id: List.first.id
	)
end


puts "Seed finished"
puts "#{User.count} users created."
puts "#{List.count} lists created."
puts "#{Item.count} items created."