class denyhosts::service {
    service { $denyhosts::params::service_name:
        ensure     => running,
        enable     => true,
        hasstatus  => false,
        hasrestart => true,
        pattern    => $denyhosts::params::service_pattern,
        require    => Class['denyhosts::config'],
    }
}
