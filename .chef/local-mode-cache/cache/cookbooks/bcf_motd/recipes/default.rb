node.force_override['ipaddress'] = '127.0.0.1'
node.normal['catch_phrase'] = 'Welcome to the kitchen'
node.force_default['catch_phrase'] = 'cooking with gas'

file "/etc/motd" do
	content "IP Address : #{node['ipaddress']}
Catch Pharase : #{node['catch_phrase']}\n"
end

