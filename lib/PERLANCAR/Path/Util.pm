package PERLANCAR::Path::Util;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

#use List::Util qw(min);

use Exporter qw(import);
our @EXPORT_OK = qw(
               );

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
 );



=head1 DESCRIPTION

This is a personal experimental module containing routines to handle pathnames.
Goals: lightweight, fast, relatively correct, consistent naming, no objects, no
File::Spec, no dependencies, Unix/Windows only.

The module name (C<PERLANCAR::> prefix) means it's temporary.


=head1 FUNCTIONS

None are exported by default, but they are exportable.


=head1 SEE ALSO

L<File::Spec>

L<Path::Tiny>

=cut
