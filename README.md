#Requierments:

* [Vagrant](http://www.vagrantup.com/) 1.5.0 <=
* [Virtualbox](https://www.virtualbox.org/) 4.2 <=
* [Hostmanager](https://github.com/smdahlen/vagrant-hostmanager) `vagrant plugin install vagrant-hostmanager`
* [Omnibus](https://github.com/schisamo/vagrant-omnibus) `vagrant plugin install vagrant-omnibus`
* [Librarian Chef](https://github.com/jimmycuadra/vagrant-librarian-chef) `vagrant plugin install vagrant-librarian-chef`


#Tested 
* vagrant (1.6)
* virtualbox (4.3.13)
* vagrant-librarian-chef (0.1.5)
* vagrant-omnibus (1.4.1)
* vagrant-hostmanager (1.4.0)

#Installed software:

* Nginx 1.1.19
* PHP 5.5.12

#How to install
- Set your hostname `config.hostmanager.aliases = %w(test.local)` 
- Set the same hostname in *my_cookbooks/app/attributes* `default['app']['servername']`
- Run `vagrant up`
- Visit the provided hostname to test

#How to use

Place your project in the `data` dir
