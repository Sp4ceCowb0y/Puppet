hiera_include('classes')

node 'node1' {

    #include profile::tomcat::prod
    include role::web
    #include tomcat

}

#node default {

#    notify{"checkpoint_1":

#        message => " *** DEFAULT BLOCK *** "
    
#    }

#}

node 'node2' {

    include role::web

}