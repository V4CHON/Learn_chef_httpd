#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'ntp'

service 'ntp' do
	action[:enabled, :start]
end

template '/etc/ntp.conf' do 
	source 'ntp.conf.erb'
end
