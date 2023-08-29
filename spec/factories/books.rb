FactoryBot.define do
  factory :book do
    name { "Sample Book" }
    year { 2023 }
    price { 19.99 }
    quantity { 1 }
    association :author, factory: :author
  end
end