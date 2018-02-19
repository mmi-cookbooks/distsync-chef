
# License:: Apache License, Version 2.0
#

require_relative 'spec_helper'

describe file('/opt/distsync') do
  it { should be_directory }
  it { should be_mode 755 }
end

describe file('/etc/distsync/client.conf') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 644 }
end
