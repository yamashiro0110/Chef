#
# Cookbook Name:: repository
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

app_dir = '/tmp/app/boot'

directory "#{app_dir}" do
  # owner 'root'
  # group 'root'
  mode '0755'
  recursive true
  action :create
end

git "#{app_dir}" do
  # user 'hoge'
  # group 'test'
  repository 'https://github.com/yamashiro0110/SpringBootSample.git'
  reference 'master'
  action :sync
end
