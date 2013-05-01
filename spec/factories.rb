FactoryGirl.define do
	factory :organization do
		name "Anthem"
    	directory_name  "anthem"
	end
	
	factory :user do
		first_name "John"
    	last_name  "Doe"
    	email  "kirby@cloversites.com"
	end
end