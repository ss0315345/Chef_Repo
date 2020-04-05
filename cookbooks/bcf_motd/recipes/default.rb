file "/etc/motd" do
	content "IP Address : #{node['ipaddress']}
Catch Pharase : #{node['catch_phrase']}\n"
end

