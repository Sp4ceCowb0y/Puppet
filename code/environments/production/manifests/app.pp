node 'node1' {

    include base

    class {'::tomcat':
        xms             => '60m',
        xmx             => '120m',
        user            => 'tomcat',
        group           => 'tomcat',
        service_state   => 'running'
    }
    
    tomcat::deploy { "sysfoo":
        deploy_url  =>  'https://46-243470015-gh.circle-artifacts.com/0/tmp/artifacts/sysfoo.war',
    }

}

node default {

    notify{"checkpoint_1":

        message => " *** DEFAULT BLOCK *** "
    
    }

}

node 'node2' {

    include base

    class {'::tomcat':
        xms             => '70m',
        xmx             => '130m',
        user            => 'tomcat',
        group           => 'tomcat',
        service_state   => 'running'
    }

}
