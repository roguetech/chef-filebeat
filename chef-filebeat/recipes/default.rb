#
# Cookbook:: no-chef-filebeat
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#

include_recipe 'no-chef-filebeat::install'
include_recipe 'no-chef-filebeat::config'
include_recipe 'no-chef-filebeat::service'
