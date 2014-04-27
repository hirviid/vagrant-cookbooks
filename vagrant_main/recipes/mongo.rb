
execute "mongo - import public key" do
  command "apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10"
  action :run
  ignore_failure true
end

execute "mongo - create list file" do
  command "echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/10gen.list"
  action :run
  ignore_failure true
end

execute "mongo - reload package database" do
  command "apt-get update -q -y"
  action :run
  ignore_failure true
end

package "mongodb-10gen"
