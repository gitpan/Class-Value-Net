package Class::Value::Net::NAPTR::Replacement_TEST;

# $Id: Replacement_TEST.pm 11636 2006-06-13 11:27:25Z gr $

use strict;
use warnings;
use Test::More;


our $VERSION = '0.02';


use base 'Test::CompanionClasses::Base';


use constant PLAN => 3;


sub run {
    my $self = shift;
    $self->SUPER::run(@_);

    my $obj = $self->make_real_object;
    $obj->value("");
    is(sprintf("%s", $obj), '.', "stringify empty value to .");
    ok($obj->is_well_formed_value("1234567"), "well-formed");
    ok(!$obj->is_valid_value('x'x512), "too many chars");
}


1;


__END__



=head1 NAME

Class::Value::Net::NAPTR::Replacement_TEST - network-related value objects

=head1 SYNOPSIS

    Class::Value::Net::NAPTR::Replacement_TEST->new;

=head1 DESCRIPTION

None yet. This is an early release; fully functional, but undocumented. The
next release will have more documentation.

Class::Value::Net::NAPTR::Replacement_TEST inherits from
L<Test::CompanionClasses::Base>.

The superclass L<Test::CompanionClasses::Base> defines these methods and
functions:

    new(), clear_package(), make_real_object(), package(), package_clear(),
    planned_test_count()

The superclass L<Class::Accessor::Complex> defines these methods and
functions:

    carp(), cluck(), croak(), flatten(), mk_abstract_accessors(),
    mk_array_accessors(), mk_boolean_accessors(),
    mk_class_array_accessors(), mk_class_hash_accessors(),
    mk_class_scalar_accessors(), mk_concat_accessors(),
    mk_forward_accessors(), mk_hash_accessors(), mk_integer_accessors(),
    mk_new(), mk_object_accessors(), mk_scalar_accessors(),
    mk_set_accessors(), mk_singleton()

The superclass L<Class::Accessor> defines these methods and functions:

    _carp(), _croak(), _mk_accessors(), accessor_name_for(),
    best_practice_accessor_name_for(), best_practice_mutator_name_for(),
    follow_best_practice(), get(), make_accessor(), make_ro_accessor(),
    make_wo_accessor(), mk_accessors(), mk_ro_accessors(),
    mk_wo_accessors(), mutator_name_for(), set()

The superclass L<Class::Accessor::Installer> defines these methods and
functions:

    install_accessor(), subname()

The superclass L<Data::Inherited> defines these methods and functions:

    every_hash(), every_list(), flush_every_cache_by_key()

=head1 METHODS

=over 4



=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<classvaluenet> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Class::Value::Net::NAPTR::Replacement_TEST>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-class-value-net@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHORS

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

Heinz Ekker C<< <ek@univie.ac.at> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2004-2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut

