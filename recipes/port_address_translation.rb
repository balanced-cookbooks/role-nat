#
# Cookbook Name:: role-nat
# Recipe: port_address_translation
#
# Copyright (C) 2013 Balanced
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#
# Configure the instance to run as a Port Address Translator (PAT) to provide
# Internet connectivity to private instances.
# stolen from: http://serverfault.com/a/522135/74587


execute 'configure-port-address-translator' do
  command '/usr/local/sbin/configure-pat.sh'
  action :nothing
end


template '/usr/local/sbin/configure-pat.sh' do
  source 'configure-pat.erb'
  mode '755'
  action :create_if_missing
  notifies :run, 'execute[configure-port-address-translator]', :immediately
end

