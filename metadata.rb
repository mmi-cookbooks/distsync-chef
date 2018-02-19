name 'distsync'
maintainer 'Rackspace'
maintainer_email 'ele-dev@lists.rackspace.com'
license 'Apache-2.0'
description 'Installs/Configures distsync'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.2'
chef_version '>= 12.7' if respond_to?(:chef_version)

depends 'runit'

source_url 'https://github.com/mmi-cookbooks/distsync-chef' if respond_to?(:source_url)
issues_url 'https://github.com/mmi-cookbooks/distsync-chef/issues' if respond_to?(:issues_url)

supports 'ubuntu'
