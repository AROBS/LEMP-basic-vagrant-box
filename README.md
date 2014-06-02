#Requierments:

* [Vagrant](http://www.vagrantup.com/) >= 1.5.0
* [Virtualbox](https://www.virtualbox.org/) >= 4.2 
* [Hostmanager](https://github.com/smdahlen/vagrant-hostmanager) `vagrant plugin install vagrant-hostmanager`
* [Omnibus](https://github.com/schisamo/vagrant-omnibus) `vagrant plugin install vagrant-omnibus`
* [Librarian Chef](https://github.com/jimmycuadra/vagrant-librarian-chef) `vagrant plugin install vagrant-librarian-chef` (if this doesent work try `vagrant plugin install vagrant-librarian-chef-nochef`) and if you still have problems delete windows and all your problems will fly away.


#Tested 
* vagrant (1.6)
* virtualbox (4.3.13)
* vagrant-librarian-chef (0.1.5)
* vagrant-omnibus (1.4.1)
* vagrant-hostmanager (1.4.0)

#Installed software:
* Ubuntu 12.04
* Nginx 1.1.19
* PHP 5.5.12
* composer
* java7
* ant
* mysql 5.5  `mysql -uroot -p123qwe`

#How to install
- Place your project in the `data` dir
- Activate a role in /roles (delete the dist extension and edit the servername attribute.)
- Run `vagrant up local` or `vagrant up demo` (depends on which role was activated) 
- Visit the provided hostname to test (default: www.test.local or www.test.demo)