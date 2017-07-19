# Install django dependencies
class python {
    package {
        'python-dev': ensure => latest;
        'python': ensure => latest;
        'python-pip': ensure => installed;
        'python-virtualenv': ensure => installed;
        'virtualenvwrapper': ensure => installed;
    }

    exec { 'create virtual environment':
        command => '/usr/bin/virtualenv -p /usr/bin/python3 /home/vagrant/.virtualenvs/api',
        creates => '/home/vagrant/.virtualenvs/api',
        user    => 'vagrant',
        require => Package['virtualenvwrapper']
    }

    exec { 'install pip dependencies':
        command => '/home/vagrant/.virtualenvs/api/bin/pip install -r /vagrant/api/requirements/development.txt',
        user    => 'vagrant',
        require => Exec['create virtual environment']
    }
}