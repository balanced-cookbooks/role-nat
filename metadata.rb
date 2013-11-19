name             'role-nat'
maintainer       'Balanced'
maintainer_email 'mahmoud@balancedpayments.com'
license          'MIT'
description      'Installs/Configures role-nat'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


depends          'apt', '~> 2.2.0'
depends          'newrelic-sysmond', '~> 1.3.3'
depends          'rsyslog', '~> 1.9.0'
depends          'munin', '~> 1.4.0'
depends          'postfix', '~> 3.0.4'
depends          'balanced-monit', '~> 0.1.0'
depends          'balanced-user', '~> 0.1.0'
