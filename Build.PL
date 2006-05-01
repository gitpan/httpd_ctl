use Module::Build;

Module::Build->new(
		   license       => 'perl',
		   dist_name   => 'httpd_ctl',
			 dist_version_from => 'script/httpd_ctl',
		   requires      => {
				 'File::Basename' => 0,
				 'File::Which' => 0,
				 'Getopt::Long' => 0,
				 'IO::All' => 0,
				 'Log::Dispatch::Email::MIMELite' => 0,
				 'Log::Log4perl' => 0,
				 'Pod::Usage' => 0,
				 'Proc::Reliable' => 0,
				 'Switch' => 0,
				 'Template' => 0,
			 },
		   create_readme => 1,
			 scripts       => [ 'script/httpd_ctl' ],
		   sign          => 1,
		   create_makefile_pl => 'passthrough',
       add_to_cleanup      => [ '*.tar.gz' ],
		  )->create_build_script;
