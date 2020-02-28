node 'node3' {

    #include base

    class {'::tomcat':
        xms             => '60m',
        xmx             => '120m',
        user            => 'tomcat',
        group           => 'tomcat',
        service_state   => 'running'
    }
    
    tomcat::deploy { "sysfoo":
        deploy_url      => 'https://46-243470015-gh.circle-artifacts.com/0/tmp/artifacts/sysfoo.war',
        checksum_value  => '4323b4805a61b120e6ac9dfb705270f4',
    }

}