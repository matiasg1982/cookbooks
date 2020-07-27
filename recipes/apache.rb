package "apache2" do
  action :install
end
service "apache2" do
  action [:enable, :start]
end

default["lamp_stack"]["sites"]["example.com"] = { "port" => 80, "servername" => "example.com", "serveradmin" => "webmaster@example.com" }

# Virtual Host Files

node["lamp_stack"]["sites"].each do |sitename, data|
  document_root = "/var/www/html/#{sitename}"

  directory document_root do
    mode "0755"
    recursive true
  end

end
