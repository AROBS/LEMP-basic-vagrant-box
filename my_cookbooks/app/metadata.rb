name              'app'
maintainer        'Mihai Mocanu @ AROBS Transilvania Software'
maintainer_email  'mihai.mocanu@arobs.com'
description       'Installs and configures basic web app'
version           '1.8.0'

recipe 'app',         'Installs and sets up configuration for basic web app'
recipe 'app::beanstalkd', 'Installs beanstalkd and sets up configuration'

supports 'ubuntu'

