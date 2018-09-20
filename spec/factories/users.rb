FactoryBot.define do
	factory :user do
		first_name { "Derek" }
		last_name { "Han" }
		email { "test@test.com" }
		password { "asdfasdf" }
		password_confirmation { "asdfasdf" }
	end

	factory :admin_user, class: AdminUser do
		first_name { "Admin" }
		last_name { "Han" }
		email { "admintest@test.com" }
		password { "asdfasdf" }
		password_confirmation { "asdfasdf" }
	end
end

