require 'chefspec'
require_relative 'spec_helper'

describe 'distsync::default' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'installs package' do
    expect(chef_run).to install_package('distsync')
  end

  # dir
  it 'writes config file' do
    expect(chef_run).to create_directory('/etc/distsync/')
  end
end
