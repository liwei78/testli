class Scenario < ActiveRecord::Base
  attr_accessible :content, :position, :logic_ids
  has_and_belongs_to_many :logics

  # has_and_belongs_to_many :cases
  has_many :thinkings
  has_many :cases, through: :thinkings
  validates :content, presence: true

  has_many :child_scenarios, class_name: 'Scenario', foreign_key: 'parent_scenario_id'
  belongs_to :parent_scenario, class_name: 'Scenario', counter_cache: true
end
