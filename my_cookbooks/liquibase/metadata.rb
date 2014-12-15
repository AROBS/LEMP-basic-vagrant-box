name              'liquibase'
maintainer        'Mihai Mocanu @ AROBS Transilvania Software'
maintainer_email  'mihai.mocanu@arobs.com'
description       'Installs and configures liquibase'
version           '1.8.0'

recipe 'liquibase',         'Installs and sets up configuration for liquibase'

depends 'java',        '~> 1.29.0'

supports 'ubuntu'

