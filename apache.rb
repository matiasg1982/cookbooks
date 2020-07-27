package "apache2" do
  action :install
end
service "apache2" do
  action [:enable, :start]
end

# Virtual Host Files

node["lamp_stack"]["sites"].each do |sitename, data|
end
