class tomcat {

    notify{"### Node1 Block ###":}

    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service

}
