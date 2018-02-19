
# License:: Apache License, Version 2.0
#

require_relative 'spec_helper'

describe file('/etc/distsync') do
  it { should be_directory }
  it { should be_mode 755 }
end

describe package('distsync') do
  it { should be_installed }
end
