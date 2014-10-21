use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::CharacterString;
BEGIN {
  $Class::Value::Net::NAPTR::CharacterString::VERSION = '1.101610';
}

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net';

sub is_well_formed_value {
    my ($self, $value) = @_;
    return 1 unless defined $value;
    $self->SUPER::is_well_formed_value($value)
      && $value =~ m/^[\x20-\x7E]*$/;
}

sub normalize_value {
    my ($self, $value) = @_;
    return unless defined $value;
    $value =~ s/^"(.*)"$/$1/;
    $value;
}

sub stringify {
    my $self = shift;
    sprintf '"%s"', $self->value;
}
1;


__END__
=pod

=head1 NAME

Class::Value::Net::NAPTR::CharacterString - Network-related value objects

=head1 VERSION

version 1.101610

=head1 METHODS

=head2 is_well_formed_value

FIXME

=head2 normalize_value

FIXME

=head2 stringify

FIXME

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org>.

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

