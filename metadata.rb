name             'role-nat'
maintainer       'Balanced'
maintainer_email 'mahmoud@balancedpayments.com'
license          'MIT'
description      'Installs/Configures role-nat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

# base
depends          'role-base', '~> 1.0'

# role cookbooks
depends          'balanced-monit'

# balanced cookbooks
