FactoryGirl.define do
	factory :user do
		name     "Username01"
		email    "user01@email.com"
		password "123456789"
		password_confirmation "123456789"
	end
end