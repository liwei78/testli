class Scenario < ActiveRecord::Base
  attr_accessible :content, :position, :logic_ids
  has_and_belongs_to_many :logics
  has_and_belongs_to_many :cases
  validates :content, presence: true

end
