FactoryBot.define do
	sequence :email do |n|
    "person#{n}@example.com"
  end

	factory :user do
		first_name { "Derek" }
		last_name { "Han" }
		email { generate(:email) }
		password { "asdfasdf" }
		password_confirmation { "asdfasdf" }
	end

	factory :admin_user, class: AdminUser do
		first_name { "Admin" }
		last_name { "Han" }
		email { generate(:email) }
		password { "asdfasdf" }
		password_confirmation { "asdfasdf" }
	end
end

