class denyhosts::config {
    file { $denyhosts::params::config_file:
        ensure  => present,
        owner   => root,
        group   => root,
        mode    => '0644',
        content => template("${module_name}/denyhosts.conf.erb"),
        require => Class['denyhosts::install'],
        notify  => Class['denyhosts::service'],
    }
}
