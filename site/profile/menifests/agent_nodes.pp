class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
}
class { 'docker':
  use_upstream_package_source => false,
}
class { 'docker':
  version => '17.09.0~ce-0~debian',
}
class { 'docker':
  docker_ee => true,
  docker_ee_source_location => 'https://<docker_ee_repo_url>',
  docker_ee_key_source => 'https://<docker_ee_key_source_url>',
}
