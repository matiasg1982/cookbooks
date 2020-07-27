#
# Cookbook: recipe_php
#
#

execute "update-upgrade" do
  command "sudo apt-get update -y && sudo apt-get upgrade -y"
  action :run
end
