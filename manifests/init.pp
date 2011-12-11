# Class: denyhosts
#
# This module manages denyhosts
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#   class { 'denyhosts': }
#
# [Remember: No empty lines between comments and class definition]
class denyhosts ($block_service = 'sshd', $admin_email = '', $syslog_report = true,
                $smtp_host = 'localhost', $smtp_port = 25, $smtp_username = false,
                $smtp_password = false, $log = '/var/log/denyhosts',
                $sync = true, $sync_upload = true, $sync_download = true) {

    include denyhosts::params, denyhosts::install, denyhosts::config, denyhosts::service
}
