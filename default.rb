#
# Cookbook Name:: lamp_stack
# Recipe:: default
#
#

execute "update-upgrade" do
  command "sudo apt-get update && sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade"
  action :run
end
