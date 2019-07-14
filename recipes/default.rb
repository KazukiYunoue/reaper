#
# Cookbook:: reaper
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

yum_repository "reaper" do
  description "bintray-thelastpickle-reaper-rpm-beta"
  baseurl "https://dl.bintray.com/thelastpickle/reaper-rpm-beta"
  gpgcheck false
  repo_gpgcheck false
end

package "reaper" do
  action :install
end

service "cassandra-reaper" do
  action [:enable, :start]
  supports status: true, restart: true
end
