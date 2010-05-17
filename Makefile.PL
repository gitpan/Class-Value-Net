
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Class::Value::Net',
                       'DISTNAME' => 'Class-Value-Net',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Scalar::Util' => '0',
                                             'English' => '0',
                                             'Class::Value' => '0',
                                             'Carp' => '0',
                                             'Test::More' => '0.94',
                                             'Error' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Test::CompanionClasses' => '0'
                                           },
                       'ABSTRACT' => 'Network-related value objects',
                       'EXE_FILES' => [],
                       'VERSION' => '1.101370',
                       'PREREQ_PM' => {
                                        'Class::Value::Test' => '0',
                                        'parent' => '0',
                                        'Error::Hierarchy::Mixin' => '0',
                                        'constant' => '0',
                                        'Class::Value::Exception::Base' => '0',
                                        'Data::Semantic::Net::IPAddress::TestData::IPv4' => '0',
                                        'Test::CompanionClasses::Base' => '0',
                                        'Test::More' => '0',
                                        'Class::Value::Boolean' => '0',
                                        'Data::Semantic::Net::IPAddress::TestData::IPv6' => '0',
                                        'Class::Value::SemanticAdapter' => '0',
                                        'Class::Value::String' => '0',
                                        'Error::Hierarchy::Test' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



