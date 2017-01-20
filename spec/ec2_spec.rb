require 'spec_helper'

describe ec2('i-01fbc3d9871181687') do
  it { should exist }
  it { should be_running }
  it { should have_tag('Name').value('TestNow_TST') }
  its(:instance_id) { should eq 'i-01fbc3d9871181687' }
  its(:image_id) { should eq 'ami-30e65350' }
  its(:public_ip_address) { should eq '35.167.195.204' }
  its(:private_ip_address) { should eq '172.31.12.62' }
  it { should be_disabled_api_termination }
  it { should have_security_group('sg-b004d8c8') }
  it { should have_security_group('launch-wizard-109') }
  #it { should have_security_group('my-security-group-tag-name') }
  it { should belong_to_vpc('vpc-c98a75ac') }
  #it { should belong_to_vpc('my-vpc') }
  it { should belong_to_subnet('subnet-7b010f3d') }
  #it { should belong_to_subnet('my-subnet') }
  it { should have_eip }
  #it { should have_eip('123.0.456.789') }
  #it { should have_ebs('vol-123a123b') }
  #it { should have_ebs('my-volume') }
=begin
  context 'nested attribute call' do
    its(:resource) { should be_an_instance_of(Awspec::ResourceReader) }
    its('vpc.id') { should eq 'vpc-ab123cde' }
  end
=end
 
end
