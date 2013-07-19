puppet-htaccess
===============

simple manifest to create a .htaccess

uses [jamtur01/puppet-httpauth](https://github.com/jamtur01/puppet-httpauth "jamtur01/puppet-httpauth") to create a .htpasswd

usage: 
<pre><code>
htaccess::file {"authentication":
                  directory     => 'PATH_TO_DIRECTORY',
                  user => "USERNAME",
                  password => 'PASSWORD',
                  realm => 'realm',
                  mechanism => basic,
                  owner => "root",
                  group => "root"
        }
</code></pre>
