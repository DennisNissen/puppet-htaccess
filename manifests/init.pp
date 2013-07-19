define htaccess::file($directory, $user, $password, $owner="www", $group="www", $realm="secured", $mechanism = "basic"){	

	httpauth { $user:
                  file     => "${directory}/.htpasswd",
                  password => $password,
                  realm => $realm,
                  mechanism => $mechanism,
                  ensure => present,
        }	

	file { "${directory}/.htpasswd":
 		 mode => 644,
		 owner => $owner, 
		 group => $group
	}	

	file  {"${directory}/.htaccess": 
		content => template("htaccessauth/htaccess.erb"),
		owner => $owner,
		group => $group
	}
}
