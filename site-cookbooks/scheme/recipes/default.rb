#
# Cookbook Name:: scheme
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

passwd = "#{node['mysql']['server_root_password']}"

template '/tmp/scheme.ddl' do
  source 'scheme.ddl.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :run, 'execute[create-scheme]'
end

execute 'create-scheme' do
  command "mysql -uroot -p#{passwd} < /tmp/scheme.ddl"
end
