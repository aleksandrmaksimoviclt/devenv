node default {
    class { 'aptupdate': stage => 'aptupdate' }
    class { 'python': stage => 'python' }
    class { 'nginx': }
    class { 'gunicorn': }
}

stage { 'aptupdate': before => Stage['python'] }
stage { 'python': before => Stage['main'] }