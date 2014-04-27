include_recipe "vagrant_main::mongo"

package "make"

php_pear "mongo" do
  action :install
end