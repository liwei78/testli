require 'spec_helper'

describe Import do
  
  before do
    f = File.open(File.join(Rails.root, 'doc', 'wordpress.2013-10-06.xml'))
    @doc = Nokogiri::XML(f)
    f.close
  end

  it 'find all blog title' do
    @doc.xpath('//item')
  end
end
