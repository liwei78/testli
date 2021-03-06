require 'spec_helper'

describe Logic do
  it { should validate_presence_of :title }
  it { should have_and_belong_to_many :scenarios }
  
  describe 'create' do
    it 'with default value' do
      logic = FactoryGirl.create(:logic)
      logic.imp_level.should == 0
    end
  end
end
