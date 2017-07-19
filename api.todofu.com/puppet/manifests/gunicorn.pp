class gunicorn {
    file { '/etc/systemd/system/api.service':
        ensure => file,
        content => template('/vagrant/puppet/templates/service/api.service')
    }

    file { '/lib/systemd/system/api.service':
        ensure => file,
        content => template('/vagrant/puppet/templates/service/api.service')
    }

    service { 'api.service':
        provider => systemd,
        ensure => running,
        enable => true,
        require => [File['/etc/systemd/system/api.service'], File['/lib/systemd/system/api.service']]
    }
}