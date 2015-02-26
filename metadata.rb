name             'chef-client-runit'
maintainer       'Joshua Timberman'
maintainer_email 'opensource@housepub.org'
license          'Apache 2.0'
description      'Sets up chef-client as a runit-supervised service'
version          '0.1.0'
depends          'runit'

unless defined?(Ridley::Chef::Cookbook::Metadata)
  source_url       'https://github.com/jtimberman/chef-client-runit-cookbook'
  issues_url       'https://github.com/jtimberman/chef-client-runit-cookbook/issues'
end
