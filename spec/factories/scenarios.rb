# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  # sequence :content do |n|
  #   "Scenario Content #{n}"
  # end

  factory :scenario do
    content 'Content'
    # cases {
    #   Array(3..10).sample.times.map do
    #     FactoryGirl.create(:case)
    #   end
    # }
  end
end
