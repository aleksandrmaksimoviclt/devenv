# Re-synchronize the package index files from their sources
class aptupdate {
    exec { 'apt-get update':
        command => '/usr/bin/apt-get update'
    }
}
