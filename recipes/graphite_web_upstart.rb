#
# Cookbook Name:: oc-graphite
# Recipe:: graphite_web_upstart
#

template '/etc/init/graphite-web.conf' do
  source 'graphite-web.conf.erb'
  mode 0644
  owner 'root'
  group 'root'
end

service 'graphite-web' do
  provider Chef::Provider::Service::Upstart
  action :start
end


