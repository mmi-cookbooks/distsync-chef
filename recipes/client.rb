#
# Cookbook Name:: distsync
# Recipe:: default
#
# Copyright 2015, Rackspace
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'distsync::default'

directory node['distsync']['output_dir'] do
  owner node['distsync']['user']
  recursive true
end

config = data_bag_item('distsync', 'config')

template "#{node['distsync']['config_dir']}/client.conf" do
  variables(api_key: config['api_key'],
            shared_secret: config['shared_secret'])
end

runit_service 'distsync' do
  log_owner 'daemon'
  log_group 'daemon'
  finish_script false
  down true
end
