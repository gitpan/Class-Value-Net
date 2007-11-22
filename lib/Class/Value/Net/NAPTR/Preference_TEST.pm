package Class::Value::Net::NAPTR::Preference_TEST;

# $Id: Preference_TEST.pm 11581 2006-06-06 14:29:18Z ek $

use strict;
use warnings;


our $VERSION = '0.03';


use base 'Class::Value::Net::NAPTR::UInt16_TEST';


sub expected_malformed_exception {
    "Class::Value::Net::Exception::NAPTR::MalformedPreference";
}


1;


__END__



=head1 NAME

Class::Value::Net::NAPTR::Preference_TEST - network-related value objects

=head1 SYNOPSIS

    Class::Value::Net::NAPTR::Preference_TEST->new;

=head1 DESCRIPTION

None yet. This is an early release; fully functional, but undocumented. The
next release will have more documentation.

Class::Value::Net::NAPTR::Preference_TEST inherits from
L<Class::Value::Net::NAPTR::UInt16_TEST>.

The superclass L<Class::Value::Net::NAPTR::UInt16_TEST> defines these
methods and functions:

    BAIL_OUT(), PLAN(), can_ok(), cmp_ok(), diag(), eq_array(), eq_hash(),
    eq_set(), fail(), is(), is_deeply(), isa_ok(), isnt(), like(), ok(),
    pass(), plan(), require_ok(), run(), skip(), throws2_ok(), todo(),
    todo_skip(), unlike(), use_ok()

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
                   
This document describes version 0.03 of L<Class::Value::Net::NAPTR::Preference_TEST>.

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

