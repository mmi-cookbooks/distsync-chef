require 'chefspec'
require_relative 'spec_helper'

describe 'distsync::default' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  # dir
  it 'writes config file' do
    expect(chef_run).to create_directory('/opt/distsync/')
  end

  it 'writes config file' do
    expect(chef_run).to create_template('/etc/distsync/client.conf')
  end

  # runit
end
