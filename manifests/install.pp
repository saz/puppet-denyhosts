class denyhosts::install {
    package { $denyhosts::params::package_name:
        ensure => present,
    }
}
