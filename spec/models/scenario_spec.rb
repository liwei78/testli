require 'spec_helper'

describe Scenario do
  it { should have_and_belong_to_many(:logics) }
  it { should validate_presence_of :content }

  describe 'create' do
    it 'with default value' do
      scenario = FactoryGirl.create(:scenario)
      scenario.position.should == 0
      scenario.imp_level.should == 0
    end
  end
end
