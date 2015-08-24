# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Cookbook Name:: distsync
# Attributes:: default
#
# Copyright 2015, Rackspace, Inc
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

default.distsync.notify         = "CloudFilesPoll"
default.distsync.storage        = "CloudFiles"

# uid to run daemon as
default.distsync.user           = "#{node.chef_environment}-dreadnot"

seed                            = "449dd170-d250-44fe-842a-e8837f513fac"
default.distsync.username       = "distsyncUpload#{seed}"
default.distsync.storage_bucket = "distsync-#{seed}"

default.distsync.provider       = "Rackspace" # {AWS, Rackspace}
default.distsync.region         = "ORD"       # {DFW, HKG, IAD, ORD, SYD}

default.distsync.config_dir     = "/etc/distsync"
default.distsync.output_dir     = "/opt/distsync"

