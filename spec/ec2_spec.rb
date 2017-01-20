require 'spec_helper'

instanceId = getAttr('instanceId')
imageId = getAttr('imageId')
instanceNameTag = getAttr('instanceNameTag')
vpcId = getAttr('vpcId')
subnetId = getAttr('subnetId')
securityGroupId = getAttr('securityGroupId')
securityGroupName = getAttr('securityGroupName')
privateIp = getAttr('privateIp')
publicIp = getAttr('publicIp')

describe ec2(ENV['instanceId']) do
  it { should exist }
  it { should be_running }
  it { should have_tag('Name').value(instanceNameTag) }
  its(:instance_id) { should eq ENV['instanceId'] }
  its(:image_id) { should eq imageId }
  its(:public_ip_address) { should eq publicIp }
  its(:private_ip_address) { should eq privateIp }
  it { should be_disabled_api_termination }
  it { should have_security_group(securityGroupId) }
  it { should have_security_group(securityGroupName) }
  #it { should have_security_group('my-security-group-tag-name') }
  it { should belong_to_vpc(vpcId) }
  #it { should belong_to_vpc('my-vpc') }
  it { should belong_to_subnet(subnetId) }
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
