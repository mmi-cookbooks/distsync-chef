
# License:: Apache License, Version 2.0
#

require_relative 'spec_helper'

describe file('/etc/distsync/server.conf') do
  it { should be_file }
  it { should be_mode 644 }
end
