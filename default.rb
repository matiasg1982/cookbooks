#
# Cookbook Name:: lamp_stack
# Recipe:: default
#
#

execute "update-upgrade" do
  command "sudo apt-get update -y && sudo apt-get upgrade -y"
  action :run
end
