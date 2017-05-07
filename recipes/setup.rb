file '/etc/motd' do
  content 'This is property of Sandipan'
  mode '0755'
  owner 'root'
  group 'root'
  action :create
end

package 'tree' do
end

package 'ntp'

service 'ntpd' do
  action [ :enable, :start ]
end

package 'vim-enhanced'

package 'git' do
  action :install
end
