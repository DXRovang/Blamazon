FactoryBot.define do
  factory :author do
    first_name { "first_name" }
    last_name { "last_name" }
    birth_date { "1970-01-01"}
    # association :author, factory: :author
  end
end