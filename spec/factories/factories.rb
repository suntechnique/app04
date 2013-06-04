FactoryGirl.define do
	factory :user do
		sequence(:name)  { |n| "Person #{n}" }
		sequence(:email) { |n| "person_#{n}@example.com"}
		password "foobar01"
		password_confirmation "foobar01"

		factory :admin do
			admin true
		end
	end
end

#FactoryGirl.define do
#	factory :user do
#		sequence(:name)  { |n| "Person #{n}" }
#		sequence(:email) { |n| "person_#{n}@example.com"}
#		password "password"
#		password_confirmation "password"
#	end
#end

#FactoryGirl.define do
#	factory :user do
#		name     "Username01"
#		email    "user01@email.com"
#		password "123456789"
#		password_confirmation "123456789"
#	end
#end