use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'teperl',
    license             => 'perl',
    dist_author         => 'Kathryn Andersen',
    dist_version_from   => 'teperl',
    dist_abstract       => 'process embedded perl in a file',
	requires            => {
	     'Text::Template' => 1.43,
	     'Getopt::Long' => 2.34,
	     'Getopt::ArgvFile' => 1.08,
	},
    build_requires => {
        'Test::More' => 0,
    },
    script_files => [qw(teperl)],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
