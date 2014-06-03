include_recipe "app::java7"

remote_file node[:liquibase][:src_path] do
  source node[:liquibase][:url]
  path node[:liquibase][:src_path]
  backup false
  notifies :run, "bash[extract_liquibase]"
  action :delete
end

bash "extract_liquibase" do
  cwd ::File.dirname(node[:liquibase][:src_path])
  code <<-EOH
    mkdir -p #{node[:liquibase][:install_path]}
    tar zxf #{node[:liquibase][:src_path]} -C #{node[:liquibase][:install_path]}
    rm -f -r #{node[:liquibase][:src_path]}
  EOH

  not_if { File.exists?("#{node[:liquibase][:install_path]}/liquibase.jar") }
end