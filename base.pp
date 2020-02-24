user { 'deploy':
    ensure      => present,
    uid         => 5001,
    home        => '/home/deploy',
    password    => '$1$m5EXpK.i$b3NiFIs5QBZu41D/ZBwn6.',                
    managehome  => true,
}

user { 'rege':
    ensure      => present,
    uid         => 5002,
    home        => '/home/rege',
    password    => '$1$m5EXpK.i$b3NiFIs5QBZu41D/ZBwn6.',                
    managehome  => true,
}

user { 'dojo':
    ensure  => absent,
}

package { [ 'tree', 'wget', 'git', 'unzip', 'ntp' ]:}

file { '/etc/motd':
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => '
        
        This server is property of rfigueras.
    
    ',
}

service { 'ntp':
    ensure  => running,
    enable  => true,
}

