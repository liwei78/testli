require 'spec_helper'

describe Scenario do
  it { should have_and_belong_to_many(:logics) }
  it { should validate_presence_of :content }
end
