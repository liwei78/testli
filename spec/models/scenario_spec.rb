require 'spec_helper'

describe Scenario do
  it { should have_and_belong_to_many(:logics) }
  it { should validate_presence_of :content }
  it { should have_many :child_scenarios }
  it { should belong_to :parent_scenario }
  it { should have_many :thinkings }
  it { should have_many :cases }

  describe 'create' do
    it 'with default value' do
      scenario = FactoryGirl.create(:scenario)
      scenario.position.should == 0
      scenario.imp_level.should == 0
    end

    it 'with child scenario value' do
      parent_scenario = FactoryGirl.create(:scenario)

      child_scenario_1 = FactoryGirl.create(:scenario)
      expect {
          parent_scenario.child_scenarios << child_scenario_1
        }.to change(parent_scenario.child_scenarios, :count).by(1)
      
      child_scenario_2 = FactoryGirl.create(:scenario)
      expect{
          parent_scenario.child_scenarios << child_scenario_2
        }.to change(parent_scenario.child_scenarios, :count).by(1)

      # TODO : fix this
      # parent_scenario.child_scenarios << child_scenario_1
      # parent_scenario.child_scenarios << child_scenario_2
      # parent_scenario.child_scenarios_count.should == 2
    end

    it 'with cases_count +1' do
      scenario = FactoryGirl.create(:scenario)
      test_case = FactoryGirl.create(:case)
      scenario.cases << test_case
      scenario.cases_count.should == 1
    end
  end
end
