FactoryGirl.define do
	factory :user do
		name     "Tony Deng"
		email    "tony@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end