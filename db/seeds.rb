AdminUser.create(
				  email: "admin@test.com", 
				  password: "asdfasdf", 
				  password_confirmation: "asdfasdf", 
				  first_name: "Admin", 
				  last_name: "Kim",
				  phone: "9716478335",
				  )
puts "1 admin user created!"

@user = User.create(
					email: "test@test.com", 
					password: "asdfasdf", 
					password_confirmation: "asdfasdf", 
					first_name: "Derek", 
					last_name: "Han",
					phone: "9716478335",
					)
puts "1 user created!"

100.times do |post|
	Post.create!(
					date: Date.today, 
					rationale: "#{post} rationale content", 
					user_id: @user.id, 
					overtime_request: 2.5,
				)
end

puts "100 Posts have been created"

100.times do |audit_log|
	AuditLog.create!(
					user_id: User.last.id, 
					status: 0, 
					start_date: Date.today - 6.days,
				)
end

puts "100 AuditLog have been created"