#Requierments:
* [Vagrant](http://www.vagrantup.com/) >= 1.5.0
* [Virtualbox](https://www.virtualbox.org/) >= 4.2 
* [Hostmanager](https://github.com/smdahlen/vagrant-hostmanager) `vagrant plugin install vagrant-hostmanager`
* [Omnibus](https://github.com/schisamo/vagrant-omnibus) `vagrant plugin install vagrant-omnibus`
* [Librarian Chef](https://github.com/jimmycuadra/vagrant-librarian-chef) `vagrant plugin install vagrant-librarian-chef` (if this doesent work try `vagrant plugin install vagrant-librarian-chef-nochef`) and if you still have problems delete windows and all your problems will fly away.


#Tested 
| vagrant | vagrant-librarian-chef | vagrant-omnibus | vagrant-hostmanager | virtualbox | Windows | Ubuntu | Mac |
|--------:|-----------------------:|----------------:|--------------------:|-----------:|--------:|-------:|----:|
| 1.6     |        0.1.5           |     1.4.1       |       1.4.0         |  4.3.13    |    8.1  | 14.04  |  Y  |
| 1.6.3   |        0.2.0           |     1.4.1       |       1.5.0         | 4.3.10-16  |    8.1  | 14.04  |  Y  |

#Not working 
| vagrant | vagrant-librarian-chef | vagrant-omnibus | vagrant-hostmanager | virtualbox | Windows | Ubuntu | Mac |
|--------:|-----------------------:|----------------:|--------------------:|-----------:|--------:|-------:|----:|
| >=1.6.5 |    0.2.0 / 0.2.1       |     1.4.1       |       1.5.0         |  4.3.16    |    8.1  | 14.04  |  ?  |

#Installed software:
* Ubuntu 12.04
* Nginx 1.1.19
* PHP 5.5.12
* composer
* java openjdk 7
* ant
* mysql 5.5  `mysql -u root -p123qwe`
* redis 2.8.17
* graylog 2
* beanstalkd
* liquibase 3.2.0
* xdebug ( port: 9001)
* vim

#How to install
- Place your project in the `data` dir
- Activate the roles in /roles (from the .dist files create the ones without the .dist suffix, change the settings as you want)
- Run `vagrant up local` or `vagrant up demo` (depends on which role you want to activate). *On Windows: cmd -> run as administrator !*
- Visit the provided hostname to test (default: www.test.local or www.test.demo)

#Greylog2
url: http://overpass.local:9000
username: admin
password: arobs123

# More info
- You can change the mysql config in the roles
