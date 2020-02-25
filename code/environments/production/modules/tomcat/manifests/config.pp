class tomcat::config {


    file{'/etc/tomcat/tomcat.conf':
        source  => 'puppet:///modules/tomcat/tomcat.conf',
        mode    => '0644',
        owner   => 'tomcat',
        group   => 'tomcat',
        notify  => Service['tomcat'],
    }

}