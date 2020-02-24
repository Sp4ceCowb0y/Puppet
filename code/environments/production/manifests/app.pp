node 'node1' {

    notify{"***** NODE1 BLOCK *****":}

    include java::install

}

node default {

    notify{"checkpoint_1":

        message => " *** DEFAULT BLOCK *** "
    
    }

}

node 'node2' {

    notify{"***** NODE2 BLOCK *****":}

    include java::install

}
