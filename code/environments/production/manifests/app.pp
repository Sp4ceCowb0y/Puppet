node 'node1' {

    notify{"***** NODE1 BLOCK *****":}

    include java::install
    include tomcat::install
    include tomcat::service

}

node default {

    notify{"checkpoint_1":

        message => " *** DEFAULT BLOCK *** "
    
    }

}

node 'node2' {

    notify{"***** NODE2 BLOCK *****":}

    include java::install
    include tomcat::install
    include tomcat::service


}
