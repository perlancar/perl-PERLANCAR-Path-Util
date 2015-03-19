package PERLANCAR::Path::Util;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

#use List::Util qw(min);

use Exporter qw(import);
our @EXPORT_OK = qw(
                       get_my_home_dir
               );

# borrowed from File::HomeDir, with some modifications
sub get_my_home_dir {
    if ($^O eq 'Win32') {
        # File::HomeDir always uses exists($ENV{x}) first, does it want to avoid
        # accidentally creating env vars?
        return $ENV{HOME} if $ENV{HOME};
        return $ENV{USERPROFILE} if $ENV{USERPROFILE};
        return join($ENV{HOMEDRIVE}, "\\", $ENV{HOMEPATH})
            if $ENV{HOMEDRIVE} && $ENV{HOMEPATH};
    } else {
        return $ENV{HOME} if $ENV{HOME};
        my @pw = getpwuid($>);
        return $pw[7] if @pw;
    }
    undef;
}

sub is_abs_path {
}

sub get_path_name {
}

sub get_path_dir {
}

1;
# ABSTRACT: Lightweight non-OO path handling module for Unix/Windows

=head1 SYNOPSIS

 use PERLANCAR::Path::Util qw(
     get_my_home_dir
 );



=head1 DESCRIPTION

This is a personal experimental module containing routines to handle pathnames.
Goals: lightweight, fast, relatively correct, consistent naming, no objects, no
File::Spec, no dependencies, Unix/Windows only.

The module name (C<PERLANCAR::> prefix) means it's temporary.


=head1 FUNCTIONS

None are exported by default, but they are exportable.

=head2 get_home_dir => str

Try several ways to get home directory. Return undef if everything fails.


=head1 SEE ALSO

L<File::HomeDir>

L<File::Spec>

L<Path::Tiny>

=cut
