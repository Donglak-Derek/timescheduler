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

AuditLog.create!( user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!( user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!( user_id: @user.id, status: 0, start_date: (Date.today - 20.days))
AuditLog.create!( user_id: @user.id, status: 0, start_date: (Date.today - 27.days))

puts "3 audit logs have been created!"

100.times do |post|
	Post.create!(
					date: Date.today, 
					rationale: "#{post} It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", 
					user_id: @user.id, 
					overtime_request: 2.5,
				)
end
puts "100 Posts have been created"








