#
# Cookbook Name:: php-nginx-mysql
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe "apt"

group node['php-nginx-mysql']['group']

user node['php-nginx-mysql']['user'] do
  group node['php-nginx-mysql']['group']
  system true
  shell '/bin/bash'
end


#include_recipe 'nginx'
#include_recipe "php-fpm"
#include_recipe "php"
#include_recipe "git"