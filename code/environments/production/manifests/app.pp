node 'node1' {

    include tomcat

}

node default {

    notify{"checkpoint_1":

        message => " *** DEFAULT BLOCK *** "
    
    }

}

node 'node2' {

    notify{"### Node2 Block ###":}

    include java::install
    include tomcat::install
    include tomcat::service


}
