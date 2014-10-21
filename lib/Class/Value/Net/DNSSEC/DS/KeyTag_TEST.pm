use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::KeyTag_TEST;
BEGIN {
  $Class::Value::Net::DNSSEC::DS::KeyTag_TEST::VERSION = '1.103060';
}

use Test::More;
use parent 'Class::Value::Test';
use constant TESTDATA => (
    {   args    => {},
        invalid => [ qw/-1 0 string 47a1 I337 133L/ ],
        valid   => [ qw/1 255 1024 1337 51220/, '7' x 100 ],
    },
);

1;

__END__
=pod

=head1 NAME

Class::Value::Net::DNSSEC::DS::KeyTag_TEST

=head1 VERSION

version 1.103060

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Class-Value-Net>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<http://search.cpan.org/dist/Class-Value-Net/>.

The development version lives at L<http://github.com/hanekomu/Class-Value-Net>
and may be cloned from L<git://github.com/hanekomu/Class-Value-Net>.
Instead of sending patches, please fork this project using the standard
git and github infrastructure.

=head1 AUTHOR

Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2004 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

