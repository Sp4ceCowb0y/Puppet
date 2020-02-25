node 'node1' {

    include tomcat
    include base

}

node default {

    notify{"checkpoint_1":

        message => " *** DEFAULT BLOCK *** "
    
    }

}

node 'node2' {

    notify{"### Node2 Block ###":}

    include tomcat
    include base


}
