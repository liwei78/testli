class Case < ActiveRecord::Base
  attr_accessible :content, :state, :input, :output, :test_class_name, :describe, :context_name, :it_sumary, :scenario_ids
  has_many :thinkings
  has_many :scenarios, through: :thinkings
  validates :content, presence: true

  def state_view
    SITE_SETTINGS['case_state_view'][self.state]
  end
end
