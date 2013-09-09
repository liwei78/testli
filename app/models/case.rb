class Case < ActiveRecord::Base
  attr_accessible :content, :state
  has_and_belongs_to_many :scenarios
  validates :content, presence: true

  def state_view
    SITE_SETTINGS['case_state_view'][self.state]
  end
end
