class denyhosts::params {
    case $::osfamily {
        'Debian': {
            $package_name = 'denyhosts'
            $service_name = 'denyhosts'
            $service_pattern = 'python /usr/sbin/denyhosts'
            $config_file = '/etc/denyhosts.conf'
            $secure_log = '/var/log/auth.log'
            $hosts_deny = '/etc/hosts.deny'
            $work_dir = '/var/lib/denyhosts'
            $lock_file = '/var/run/denyhosts.pid'
        }
        'RedHat': {
            $package_name = 'denyhosts'
            $service_name = 'denyhosts'
            $service_pattern = 'python /usr/bin/denyhosts.py'
            $config_file = '/etc/denyhosts.conf'
            $secure_log = '/var/log/secure'
            $hosts_deny = '/etc/hosts.deny'
            $work_dir = '/var/lib/denyhosts'
            $lock_file = '/var/lock/subsys/denyhosts'
        }
        default: {
          fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
        }
    }
}
