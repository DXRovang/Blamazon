FactoryBot.define do
  factory :author do
    first_name { "John" }
    last_name { "Doe" }
    birth_date { "1970-01-01"}
    gender { 'M' }
    nationality { 'Scotland' }
  end
end