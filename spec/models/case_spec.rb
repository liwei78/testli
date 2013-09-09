require 'spec_helper'

describe Case do
  it { should have_and_belong_to_many(:scenarios) }
  it { should validate_presence_of :content }

  describe 'create' do
    it 'with default value' do
      test_case = Case.create
      test_case.state.should == 0
    end
  end
end
