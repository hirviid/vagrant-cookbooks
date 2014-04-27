bash "assign-postgres-password" do
  user 'postgres'
  code <<-EOH
echo "ALTER ROLE postgres PASSWORD '#{node['postgresql']['password']['postgres']}';" | psql
  EOH
  action :run
end