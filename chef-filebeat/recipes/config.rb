template '/etc/filebeat/filebeat.yml' do
  source 'filebeat.erb'
  owner 'root'
  group 'root'
  mode '0500'
end
