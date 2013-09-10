require 'spec_helper'

describe Case do
  it { should have_and_belong_to_many(:scenarios) }
  it { should validate_presence_of :content }

  describe 'create' do
    it 'with default value' do
      test_case = FactoryGirl.create(:case)
      test_case.state.should == 0
      test_case.position.should == 0
    end

    it 'with scenarios_count +1' do
      scenario = FactoryGirl.create(:scenario)
      test_case = FactoryGirl.create(:case)
      scenario.cases << test_case
      scenario.cases.count.should == 1
    end
  end
end
