class Logic < ActiveRecord::Base
  attr_accessible :content, :position, :title
  validates :title, presence: true

  has_and_belongs_to_many :scenarios
end
