FactoryBot.define do
  factory :cell do
    body { "MyString" }
    row { 1 }
    column { 1 }
    mandala { nil }
  end
end
