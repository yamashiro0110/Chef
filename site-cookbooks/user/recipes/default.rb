#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

add_cnt = 0

%w[hoge fuga].each do |name|
  add_cnt = add_cnt + 1
  user name do
    action :create
    comment 'Operator'
    uid 1000 + add_cnt
    gid 'wheel'
    home '/home/' + name
    shell '/bin/bash'
    password "$1$owPTpePt$VB1kne2IgcWERsZrty6bE."
    supports :manage_home => true
  end
end


