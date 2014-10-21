use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Replacement_TEST;
our $VERSION = '1.100840';

# ABSTRACT: Network-related value objects
use Test::More;
use parent 'Test::CompanionClasses::Base';
use constant PLAN => 3;

sub run {
    my $self = shift;
    $self->SUPER::run(@_);
    my $obj = $self->make_real_object;
    $obj->value("");
    is(sprintf("%s", $obj), '.', "stringify empty value to .");
    ok($obj->is_well_formed_value("1234567"), "well-formed");
    ok(!$obj->is_valid_value('x' x 512),      "too many chars");
}
1;

__END__
=pod

=head1 NAME

Class::Value::Net::NAPTR::Replacement_TEST - Network-related value objects

=head1 VERSION

version 1.100840

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Class-Value-Net>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see
L<http://search.cpan.org/dist/Class-Value-Net/>.

The development version lives at
L<http://github.com/hanekomu/Class-Value-Net/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2004 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

