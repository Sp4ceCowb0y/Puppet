package {"nginx":
    before  => Service["nginx"],
}

file {"nginx.conf":
    notify  => Service["nginx"],
}

service {"nginx":
    require     => [ Package["nginx"], File["nginx.conf"] ],
    subscribe   => File["nginx.conf"],
}

Package["nginx"] -> File["nginx.conf"] ~> Service["nginx"]