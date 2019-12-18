if node['platform'] == 'centos'
  execute '' do
    command 'sudo rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch'
  end

  cookbook_file '/etc/yum.repos.d/elastic.repo' do
    source 'elastic.repo'
    mode '0755'
    owner 'root'
    group 'root'
  end

end

package 'filebeat' do
  action :install
end

execute 'modules' do
  command: 'filebeat modules enable system'
end
