require 'spec_helper'

describe ec2('i-01fbc3d9871181687') do
  it { should exist }
  it { should be_running }
  it { should have_tag('Name').value('TestNow_TST') }
end
