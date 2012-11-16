use 5.010;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Lingua::FreeLing3::Utils',
    AUTHOR              => q{Nuno Carvalho <smash@cpan.org>},
    VERSION_FROM        => 'lib/Lingua/FreeLing3/Utils.pm',
    ABSTRACT_FROM       => 'lib/Lingua/FreeLing3/Utils.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
                  'Scalar::Util' => 0,
        'File::Slurp' => 0,
        'Getopt::Std' => 0,
        'Lingua::FreeLing3::Tokenizer' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Lingua-FreeLing3-Utils-*' },
);
