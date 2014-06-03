
#Servername what is set for the vagrants hostmanager plugin
default['app']['servername'] = ''
default['app']['base_dir'] = '/vagrant_data'

# for apache ant
default['ant']['install_method'] = 'package'
default['java']['jdk_version'] = '7'

#mysql config
default['mysql']['server_root_password'] = '123qwe'
default['mysql']['server_debian_password'] = '123qwe'
default['mysql']['version'] = '5.5'
default['mysql']['allow_remote_root'] = true

#liquibase
default['liquibase']['url'] = 'http://sourceforge.net/projects/liquibase/files/Liquibase%20Core/liquibase-3.0.8-bin.tar.gz/download'
default['liquibase']['src_path'] = default['app']['base_dir'] + '/tmp/liquibase.tar.gz'
default['liquibase']['install_path'] = default['app']['base_dir'] + '/bin/liquibase'