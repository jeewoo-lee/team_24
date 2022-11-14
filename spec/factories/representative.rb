FactoryBot.define do
  factory :representative do
    name 'Name'
    title 'A Fake Title' # default values
    rating 'PG'
    release_date { 10.years.ago }
  end
end
