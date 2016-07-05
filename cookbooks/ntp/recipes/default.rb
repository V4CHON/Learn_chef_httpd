#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'ntpd'

service 'ntpd' do
	action[:enabled, :start]
end

template '/etc/ntp.conf' do 
	source 'ntp.conf.erb'
end
