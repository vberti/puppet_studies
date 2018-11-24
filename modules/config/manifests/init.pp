class config {
  
  package { 'ntp' :
    ensure => 'present',
  }

#PUPPET CONFIG
  file {'/etc/puppetlabs/puppet/puppet.conf':
    source => 'puppet:///modules/config/puppet.conf',
    ensure => present
  }
 
  service { 'puppet' :
    ensure => 'running' 
  }

#NTPT CONFIG
  file {'/etc/ntp.conf':
    source => 'puppet:///modules/config/ntp.conf',
    ensure => present
  }
 
  service { 'ntp' :
    ensure => 'running' 
  }

}
