#
# Cookbook Name:: spring-boot-jar
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

app_dir = '/usr/local/app'
jar_name = 'spring-boot-sample-0.1.jar'
lock_file = '/tmp/spring_boot.lock'

directory "#{app_dir}" do
  # owner 'root'
  # group 'root'
  mode '0755'
  action :create
end

cookbook_file "#{app_dir}/#{jar_name}" do
  source "#{jar_name}"
  # owner 'root'
  # group 'root'
  mode '0644'
end

execute 'exec-spring-boot' do
  cwd "#{app_dir}"
  command "touch #{lock_file} && java -jar #{jar_name} &"
  creates "#{lock_file}"
  action :run
end
