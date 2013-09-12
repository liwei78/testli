class Thinking < ActiveRecord::Base
  belongs_to :case, counter_cache: :scenarios_count
  belongs_to :scenario, counter_cache: :cases_count
end
