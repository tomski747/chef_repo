#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Install apache2 (ubuntu style)
package "apache2" do 
		action :install 
end

#Enabling "apache2" service 
service "apache2" do 
	action [:start, :enable]
end

#Create default virtual server 

cookbook_file "/var/www/index.html" do 
	source "index.html"
	mode "0644"
end
