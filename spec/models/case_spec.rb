require 'spec_helper'

describe Case do
  # it { should have_and_belong_to_many(:scenarios) }
  it { should validate_presence_of :content }
  it { should have_many :thinkings }
  it { should have_many :scenarios }

  describe 'create' do
    it 'with default value' do
      test_case = FactoryGirl.create(:case)
      test_case.state.should == 0
      test_case.position.should == 0
    end

    it 'with scenarios_count +1' do
      scenario = FactoryGirl.create(:scenario)
      test_case = FactoryGirl.create(:case)
      test_case.scenarios << scenario
      test_case.scenarios_count.should == 1
    end
  end
end
