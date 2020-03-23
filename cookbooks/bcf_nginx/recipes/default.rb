package "nginx"

service "nginx" do
	action [:enable, :start]
end

file "/usr/share/nginx/html/index.html" do
	content "<html><h1>Hello World</h1></html>"
	action :create
	not_if { ::File.exist?("/usr/share/nginx/html/index.html") }
end
	
