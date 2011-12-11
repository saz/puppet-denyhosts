# puppet-denyhosts

Manage denyhosts via Puppet

## How to use

```
    class { 'denyhosts': }
```

### Default values
```
    class { 'denyhosts':
        block_service => 'sshd',
        admin_email => '',
        syslog_report => true,
        smtp_host => 'localhost',
        smtp_port => 25,
        smtp_username => false,
        smtp_password => false,
        log => '/var/log/denyhosts',
        sync => true,
        sync_upload => true,
        sync_download => true,
    }
```
