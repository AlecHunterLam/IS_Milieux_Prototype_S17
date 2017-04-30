FactoryGirl.define do
  factory :product do
    name "Big Skinny"
    description "It's a big skinny wallet"
    weight 20.4
    dimensions "12 x 12"
    color "black"
    category "Men"
    inventory 100
    cart false
  end

end