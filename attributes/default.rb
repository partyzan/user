#
# Cookbook Name:: user
# Attributes:: default
#
# Author:: Seth Vargo <sethvargo@gmail.com>
#
# Copyright 2012, Seth Vargo
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

case platform
when 'debian','ubuntu','redhat','centos','amazon','scientific','fedora','freebsd','suse'
  default['user']['home'] = '/home'
  default['user']['shell'] = '/bin/bash'
when 'openbsd'
  default['user']['home'] = '/home'
  default['user']['shell'] = '/bin/ksh'
when 'mac_os_x', 'mac_os_x_server'
  default['user']['home'] = '/Users'
  default['user']['shell'] = '/bin/bash'
else
  default['user']['home'] = '/home'
  default['user']['shell'] = nil
end

default['user']['data_bag'] = 'users'
default['user']['ssh_key_name'] = 'id_rsa'
