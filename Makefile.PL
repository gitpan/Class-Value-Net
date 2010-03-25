
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Class::Value::Net',
                       'DISTNAME' => 'Class-Value-Net',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Network-related value objects',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100840',
                       'PREREQ_PM' => {
                                        'Scalar::Util' => '0',
                                        'Class::Value' => '0',
                                        'Data::Semantic::Net::IPAddress::TestData::IPv4' => '0',
                                        'Error' => '0',
                                        'Test::CompanionClasses::Base' => '0',
                                        'File::Find' => '0',
                                        'Test::CompanionClasses' => '0',
                                        'Data::Semantic::Net::IPAddress::TestData::IPv6' => '0',
                                        'Class::Value::SemanticAdapter' => '0',
                                        'Error::Hierarchy::Test' => '0',
                                        'Class::Value::Test' => '0',
                                        'English' => '0',
                                        'parent' => '0',
                                        'Error::Hierarchy::Mixin' => '0',
                                        'Class::Value::Exception::Base' => '0',
                                        'constant' => '0',
                                        'Carp' => '0',
                                        'Test::More' => '0.88',
                                        'Class::Value::Boolean' => '0',
                                        'File::Temp' => '0',
                                        'Class::Value::String' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



