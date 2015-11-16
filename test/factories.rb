FactoryGirl.define do 
  
  factory :user do
    sequence :email do |n|
    	"test#{n}@gmail.com"
    end
    password "1234test"
    password_confirmation "1234test"
  end

 factory :place do
    name "Magic Hotdog"
    description "gourmet hotdogs"
    address "415 E. Bethany Dr. Allen, TX 75002"
    association :user
  end

 factory :comment do
    message "testing"
    rating "1_star"
    association :user
    association :place
  end

end
