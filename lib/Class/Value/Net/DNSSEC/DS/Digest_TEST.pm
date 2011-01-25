use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::Digest_TEST;
BEGIN {
  $Class::Value::Net::DNSSEC::DS::Digest_TEST::VERSION = '1.110250';
}

# ABSTRACT: Network-related value objects
use Test::More;
use parent 'Class::Value::Test';
use constant TESTDATA => (
    {   args    => {},
        invalid => [qw/-1 string 0X y0y0/],
        valid   => [
            qw/
              0C30AA64DF5149B0237F0CAD8E6AB22825BDC8CADBD7CC108F6FFC74AC428709
              0C7D18B6190D9EA7263A6DE63DAB7331F93AF238
              0CD268577B02095808CCF1F77B8B76796038F42F5602748566ECC9034440F430
              0D0CD17B3ED3F60ED687F90FF9C795BBE9C67E62
              19BC4BB9D1285BE162E390158D762291A2DA8852EF31D2EC5F17F302BCFD81D4
              1C407A48DA11EA76F04E95FC518C1010B2C92BD1
              1D83F503CCED4A4B6F7F8DB1CF43D38F9133A3EA
              23D40946A7617EC1567D00EB6F4715255643D43D837FE6BC92A49A0C9169AF4F
              26811E459C850F50A85D1EAF589E30DC14D09D1A6E6262E8D36B6BFFC605334C
              294C803483203E03C6312344AB5402C46CD19C62
              2C6EA21F9B5EF3857586A10B1DDF05C9A95E25B6E968EB1A2F7B8D4FADA5544B
              2CF61F8351DB41C190C8E58364B786EEF0201D89F709F997541BC3C7668D76EA
              2DF848B108F9AE0723EC3C563CF7BCE6B0B7D73FED5346B39BE1189E5D0AE9E1
              30FC582FE64CA122064D92FF6DF3EC8383A1E987
              338EF4055DFBAB9E17270DA4BFAD16212386E981
              342AFB8BA56277EC54F17ED007937F794B9F8257BF6CD544137B10DF5D2910EF
              34F6E274294D84E62C132117208BB64BC31CC0A8D81287DD7A7E65DCB760BD19
              3B526BCC354AE085AD9984C9BE73D271411023EFF421EF184BCE41ACE3DE9F8B
              409AA5CD776352AEAB7A46B64EE7BA8061CB9374
              457C64669C357AF4AABDEB16A6A119B22D3FCB339BBF3C1701AA84CBC3E105F3
              513D1C41DF184F249280FC9D92243315E6A1BB63
              57D1927113224D7FBB9FC2F68394A717263DDAE5F883EE461AAF8F4ED4F39E23
              58A2D5813CC2CAA6B5B88349B5127EB592E64BC85E6D796A27D1B3338CA35638
              60039CDD684CCCACF2ED7719D2844FC6C9EFC7AE
              6119CAE74A6EC411FE0B3260FC5C20ABD68A485A
              66B273B62A7282590410B4E6831A665A930CC2E9
              72863CE93E5D4CEFE529D32BE7484056442DEA804D8F0769522CDB181C86F0E5
              76518E8EB8DDDDC94994EFA3870F0761A4EB255B885F70725FC75BCD7EC6789A
              79F9C2151B0ADAB2E680574A8E1E466749B935A3
              85503A030DDF0297450DDD4B5E2B96A463D2D1EA
              8740A538FFE8CBD010BDFAC7CBAA24B7039D47E04DACBFF5A9E5E81E8F3F45AB
              87516D56B697CB3F7A7C3EB594EE0E16AE509D16A503089F4FBD4F347B336F93
              87E2B3544884B45F36A0DA72DADCB0239C4D73D4
              928C1114C32E27CD28713D776D93B462FCF5C31CDDA1BF40E9869251B7014C83
              93D30693C59CD11646CEAA77DCED10DA13BEEDE9
              94346154CF33613B7D50F0B97790FE0E0D61B33A
              96EEB2FFD9B00CD4694E78278B5EFDAB0A80446567B69F634DA078F0D90F01BA
              9C6A1545EEDBBBCF44A011198B0615377DD37CF4
              A057C8553B1DC6CF158A87CD2D0BAA2CDC9C6A14FA03DE02B19AB0DA62AF279E
              A099287BC1850C156D941915DED0F9500FDCF3A9
              A1907F85D49081239389C216912B8937D0ECEB3D
              A1AB8546B80E438A7DFE0EC559A7088EC5AED3C4E0D26B1B60ED3735F853DFD7
              A471CE5E038A05430C5B13EC457C272AF48BCC12EF5B572CF2B87544B284A006
              A4F7756C0B5E82D9E31E8649F097B81F4E28F683
              A76DDE827B52D66933340341A24B0D16A29D117C
              AEA001556720B2AA252C687B7ABE08ED868A61095F254186FEFFF75F54AE1847
              B235260ABF0877B65647D46B60AA3DDFE5F4F37F3915EC8D90615BF8AA603808
              B3F4B4844A107C5367821E9E66DDC869F7A0107539BDA39FFBE19CDCBCFCA431
              B62D6A035EC97E78692AB0026854A635A1F79777
              B8174233B52988D1A3517C9EF970DF7DF4900B3B211BBF5A931C4FA06C907F6A
              BEE4A7A77CB1FB609777B25D2754815A274452CFD99618D8F3270556D42EA897
              C686FC34C432A82BD0F7A8569C32BBA8152B2D0D
              C7AEE4D32904728741DB270E72899673D7DFAF212E517F2400C9424B231CF56B
              C9660594EFA1DCCCCA1B6B7359262F2E11052403
              CE9389182E9CD4B91E9BB68141A5A1A7A68325C3EAFE3C3DD72E34F8DFF11A47
              D071D44BF9DDF70449C5A6C37CADEB3EB3683C74
              D2C46F1B7A4F83D99C5133671167D083243A3F48
              D51F6C4A545691F4234F886F4FB82EBBEB06D2139805100F28442AFA784A33FA
              D569A173FA0099A428A4B5E0EAF6ED445309C9D76F2D8FB4CE83AEF5AE79D593
              DAB1AAE320707695D0DAACF4DC01B11B8FB3D0B0AB2AF7C27B160915D1D39DBE
              DAE1EA20F52187FDE18DC294BAF08D36F57420B2
              E1A0FC89B87F5E7F6B354D364CF704855A2E9A52B7F39BBE4E2BEA443B81B18E
              E2D262469CB998642F772610A77AAEABB84A4F71CF40B9E30C03B9C9E1F6409C
              E427598046D839DE9F8A8B381D5A2C0609AFE4BC
              E5248F29BA196ECA52987B8F697E0513D9A9CAD76E7F19172B999A5B84457B63
              E6C1716CFB6BDC84E84CE1AB5510DAC69173B5B2
              EAA0978F38879DB70A53F9FF1ACF21D046A98B5C
              EFC19D4685751FF8E11F96142A083DCB9C708912
              F2860D6D21F5B10CD4D0F9EF018812869C2ADDF4B1FA94F71EBEE0EA7A3883A8
              FB2BB4925BA253FC13CFB1E341DB0DFD8541FE27B4C6373D7D180AEC19BC1471
              FDD390379DE73265D77796341A2E38ACFCA116CF5BD04EBA5C164924D7C629C1
              /
        ],
        normalize => {
            '0C30AA64DF5149B0237F0CAD8E6AB22825BDC8CADBD7CC108F6FFC74AC428709'
              => '0c30aa64df5149b0237f0cad8e6ab22825bdc8cadbd7cc108f6ffc74ac428709',
            '0C7D18B6190D9EA7263A6DE63DAB7331F93AF238' =>
              '0c7d18b6190d9ea7263a6de63dab7331f93af238',
            '0CD268577B02095808CCF1F77B8B76796038F42F5602748566ECC9034440F430'
              => '0cd268577b02095808ccf1f77b8b76796038f42f5602748566ecc9034440f430',
            '0D0CD17B3ED3F60ED687F90FF9C795BBE9C67E62' =>
              '0d0cd17b3ed3f60ed687f90ff9c795bbe9c67e62',
            '19BC4BB9D1285BE162E390158D762291A2DA8852EF31D2EC5F17F302BCFD81D4'
              => '19bc4bb9d1285be162e390158d762291a2da8852ef31d2ec5f17f302bcfd81d4',
            '1C407A48DA11EA76F04E95FC518C1010B2C92BD1' =>
              '1c407a48da11ea76f04e95fc518c1010b2c92bd1',
            '1D83F503CCED4A4B6F7F8DB1CF43D38F9133A3EA' =>
              '1d83f503cced4a4b6f7f8db1cf43d38f9133a3ea',
            '23D40946A7617EC1567D00EB6F4715255643D43D837FE6BC92A49A0C9169AF4F'
              => '23d40946a7617ec1567d00eb6f4715255643d43d837fe6bc92a49a0c9169af4f',
            '26811E459C850F50A85D1EAF589E30DC14D09D1A6E6262E8D36B6BFFC605334C'
              => '26811e459c850f50a85d1eaf589e30dc14d09d1a6e6262e8d36b6bffc605334c',
            '294C803483203E03C6312344AB5402C46CD19C62' =>
              '294c803483203e03c6312344ab5402c46cd19c62',
            '2C6EA21F9B5EF3857586A10B1DDF05C9A95E25B6E968EB1A2F7B8D4FADA5544B'
              => '2c6ea21f9b5ef3857586a10b1ddf05c9a95e25b6e968eb1a2f7b8d4fada5544b',
            '2CF61F8351DB41C190C8E58364B786EEF0201D89F709F997541BC3C7668D76EA'
              => '2cf61f8351db41c190c8e58364b786eef0201d89f709f997541bc3c7668d76ea',
            '2DF848B108F9AE0723EC3C563CF7BCE6B0B7D73FED5346B39BE1189E5D0AE9E1'
              => '2df848b108f9ae0723ec3c563cf7bce6b0b7d73fed5346b39be1189e5d0ae9e1',
            '30FC582FE64CA122064D92FF6DF3EC8383A1E987' =>
              '30fc582fe64ca122064d92ff6df3ec8383a1e987',
            '338EF4055DFBAB9E17270DA4BFAD16212386E981' =>
              '338ef4055dfbab9e17270da4bfad16212386e981',
            '342AFB8BA56277EC54F17ED007937F794B9F8257BF6CD544137B10DF5D2910EF'
              => '342afb8ba56277ec54f17ed007937f794b9f8257bf6cd544137b10df5d2910ef',
            '34F6E274294D84E62C132117208BB64BC31CC0A8D81287DD7A7E65DCB760BD19'
              => '34f6e274294d84e62c132117208bb64bc31cc0a8d81287dd7a7e65dcb760bd19',
            '3B526BCC354AE085AD9984C9BE73D271411023EFF421EF184BCE41ACE3DE9F8B'
              => '3b526bcc354ae085ad9984c9be73d271411023eff421ef184bce41ace3de9f8b',
            '409AA5CD776352AEAB7A46B64EE7BA8061CB9374' =>
              '409aa5cd776352aeab7a46b64ee7ba8061cb9374',
            '457C64669C357AF4AABDEB16A6A119B22D3FCB339BBF3C1701AA84CBC3E105F3'
              => '457c64669c357af4aabdeb16a6a119b22d3fcb339bbf3c1701aa84cbc3e105f3',
            '513D1C41DF184F249280FC9D92243315E6A1BB63' =>
              '513d1c41df184f249280fc9d92243315e6a1bb63',
            '57D1927113224D7FBB9FC2F68394A717263DDAE5F883EE461AAF8F4ED4F39E23'
              => '57d1927113224d7fbb9fc2f68394a717263ddae5f883ee461aaf8f4ed4f39e23',
            '58A2D5813CC2CAA6B5B88349B5127EB592E64BC85E6D796A27D1B3338CA35638'
              => '58a2d5813cc2caa6b5b88349b5127eb592e64bc85e6d796a27d1b3338ca35638',
            '60039CDD684CCCACF2ED7719D2844FC6C9EFC7AE' =>
              '60039cdd684cccacf2ed7719d2844fc6c9efc7ae',
            '6119CAE74A6EC411FE0B3260FC5C20ABD68A485A' =>
              '6119cae74a6ec411fe0b3260fc5c20abd68a485a',
            '66B273B62A7282590410B4E6831A665A930CC2E9' =>
              '66b273b62a7282590410b4e6831a665a930cc2e9',
            '72863CE93E5D4CEFE529D32BE7484056442DEA804D8F0769522CDB181C86F0E5'
              => '72863ce93e5d4cefe529d32be7484056442dea804d8f0769522cdb181c86f0e5',
            '76518E8EB8DDDDC94994EFA3870F0761A4EB255B885F70725FC75BCD7EC6789A'
              => '76518e8eb8ddddc94994efa3870f0761a4eb255b885f70725fc75bcd7ec6789a',
            '79F9C2151B0ADAB2E680574A8E1E466749B935A3' =>
              '79f9c2151b0adab2e680574a8e1e466749b935a3',
            '85503A030DDF0297450DDD4B5E2B96A463D2D1EA' =>
              '85503a030ddf0297450ddd4b5e2b96a463d2d1ea',
            '8740A538FFE8CBD010BDFAC7CBAA24B7039D47E04DACBFF5A9E5E81E8F3F45AB'
              => '8740a538ffe8cbd010bdfac7cbaa24b7039d47e04dacbff5a9e5e81e8f3f45ab',
            '87516D56B697CB3F7A7C3EB594EE0E16AE509D16A503089F4FBD4F347B336F93'
              => '87516d56b697cb3f7a7c3eb594ee0e16ae509d16a503089f4fbd4f347b336f93',
            '87E2B3544884B45F36A0DA72DADCB0239C4D73D4' =>
              '87e2b3544884b45f36a0da72dadcb0239c4d73d4',
            '928C1114C32E27CD28713D776D93B462FCF5C31CDDA1BF40E9869251B7014C83'
              => '928c1114c32e27cd28713d776d93b462fcf5c31cdda1bf40e9869251b7014c83',
            '93D30693C59CD11646CEAA77DCED10DA13BEEDE9' =>
              '93d30693c59cd11646ceaa77dced10da13beede9',
            '94346154CF33613B7D50F0B97790FE0E0D61B33A' =>
              '94346154cf33613b7d50f0b97790fe0e0d61b33a',
            '96EEB2FFD9B00CD4694E78278B5EFDAB0A80446567B69F634DA078F0D90F01BA'
              => '96eeb2ffd9b00cd4694e78278b5efdab0a80446567b69f634da078f0d90f01ba',
            '9C6A1545EEDBBBCF44A011198B0615377DD37CF4' =>
              '9c6a1545eedbbbcf44a011198b0615377dd37cf4',
            'A057C8553B1DC6CF158A87CD2D0BAA2CDC9C6A14FA03DE02B19AB0DA62AF279E'
              => 'a057c8553b1dc6cf158a87cd2d0baa2cdc9c6a14fa03de02b19ab0da62af279e',
            'A099287BC1850C156D941915DED0F9500FDCF3A9' =>
              'a099287bc1850c156d941915ded0f9500fdcf3a9',
            'A1907F85D49081239389C216912B8937D0ECEB3D' =>
              'a1907f85d49081239389c216912b8937d0eceb3d',
            'A1AB8546B80E438A7DFE0EC559A7088EC5AED3C4E0D26B1B60ED3735F853DFD7'
              => 'a1ab8546b80e438a7dfe0ec559a7088ec5aed3c4e0d26b1b60ed3735f853dfd7',
            'A471CE5E038A05430C5B13EC457C272AF48BCC12EF5B572CF2B87544B284A006'
              => 'a471ce5e038a05430c5b13ec457c272af48bcc12ef5b572cf2b87544b284a006',
            'A4F7756C0B5E82D9E31E8649F097B81F4E28F683' =>
              'a4f7756c0b5e82d9e31e8649f097b81f4e28f683',
            'A76DDE827B52D66933340341A24B0D16A29D117C' =>
              'a76dde827b52d66933340341a24b0d16a29d117c',
            'AEA001556720B2AA252C687B7ABE08ED868A61095F254186FEFFF75F54AE1847'
              => 'aea001556720b2aa252c687b7abe08ed868a61095f254186fefff75f54ae1847',
            'B235260ABF0877B65647D46B60AA3DDFE5F4F37F3915EC8D90615BF8AA603808'
              => 'b235260abf0877b65647d46b60aa3ddfe5f4f37f3915ec8d90615bf8aa603808',
            'B3F4B4844A107C5367821E9E66DDC869F7A0107539BDA39FFBE19CDCBCFCA431'
              => 'b3f4b4844a107c5367821e9e66ddc869f7a0107539bda39ffbe19cdcbcfca431',
            'B62D6A035EC97E78692AB0026854A635A1F79777' =>
              'b62d6a035ec97e78692ab0026854a635a1f79777',
            'B8174233B52988D1A3517C9EF970DF7DF4900B3B211BBF5A931C4FA06C907F6A'
              => 'b8174233b52988d1a3517c9ef970df7df4900b3b211bbf5a931c4fa06c907f6a',
            'BEE4A7A77CB1FB609777B25D2754815A274452CFD99618D8F3270556D42EA897'
              => 'bee4a7a77cb1fb609777b25d2754815a274452cfd99618d8f3270556d42ea897',
            'C686FC34C432A82BD0F7A8569C32BBA8152B2D0D' =>
              'c686fc34c432a82bd0f7a8569c32bba8152b2d0d',
            'C7AEE4D32904728741DB270E72899673D7DFAF212E517F2400C9424B231CF56B'
              => 'c7aee4d32904728741db270e72899673d7dfaf212e517f2400c9424b231cf56b',
            'C9660594EFA1DCCCCA1B6B7359262F2E11052403' =>
              'c9660594efa1dcccca1b6b7359262f2e11052403',
            'CE9389182E9CD4B91E9BB68141A5A1A7A68325C3EAFE3C3DD72E34F8DFF11A47'
              => 'ce9389182e9cd4b91e9bb68141a5a1a7a68325c3eafe3c3dd72e34f8dff11a47',
            'D071D44BF9DDF70449C5A6C37CADEB3EB3683C74' =>
              'd071d44bf9ddf70449c5a6c37cadeb3eb3683c74',
            'D2C46F1B7A4F83D99C5133671167D083243A3F48' =>
              'd2c46f1b7a4f83d99c5133671167d083243a3f48',
            'D51F6C4A545691F4234F886F4FB82EBBEB06D2139805100F28442AFA784A33FA'
              => 'd51f6c4a545691f4234f886f4fb82ebbeb06d2139805100f28442afa784a33fa',
            'D569A173FA0099A428A4B5E0EAF6ED445309C9D76F2D8FB4CE83AEF5AE79D593'
              => 'd569a173fa0099a428a4b5e0eaf6ed445309c9d76f2d8fb4ce83aef5ae79d593',
            'DAB1AAE320707695D0DAACF4DC01B11B8FB3D0B0AB2AF7C27B160915D1D39DBE'
              => 'dab1aae320707695d0daacf4dc01b11b8fb3d0b0ab2af7c27b160915d1d39dbe',
            'DAE1EA20F52187FDE18DC294BAF08D36F57420B2' =>
              'dae1ea20f52187fde18dc294baf08d36f57420b2',
            'E1A0FC89B87F5E7F6B354D364CF704855A2E9A52B7F39BBE4E2BEA443B81B18E'
              => 'e1a0fc89b87f5e7f6b354d364cf704855a2e9a52b7f39bbe4e2bea443b81b18e',
            'E2D262469CB998642F772610A77AAEABB84A4F71CF40B9E30C03B9C9E1F6409C'
              => 'e2d262469cb998642f772610a77aaeabb84a4f71cf40b9e30c03b9c9e1f6409c',
            'E427598046D839DE9F8A8B381D5A2C0609AFE4BC' =>
              'e427598046d839de9f8a8b381d5a2c0609afe4bc',
            'E5248F29BA196ECA52987B8F697E0513D9A9CAD76E7F19172B999A5B84457B63'
              => 'e5248f29ba196eca52987b8f697e0513d9a9cad76e7f19172b999a5b84457b63',
            'E6C1716CFB6BDC84E84CE1AB5510DAC69173B5B2' =>
              'e6c1716cfb6bdc84e84ce1ab5510dac69173b5b2',
            'EAA0978F38879DB70A53F9FF1ACF21D046A98B5C' =>
              'eaa0978f38879db70a53f9ff1acf21d046a98b5c',
            'EFC19D4685751FF8E11F96142A083DCB9C708912' =>
              'efc19d4685751ff8e11f96142a083dcb9c708912',
            'F2860D6D21F5B10CD4D0F9EF018812869C2ADDF4B1FA94F71EBEE0EA7A3883A8'
              => 'f2860d6d21f5b10cd4d0f9ef018812869c2addf4b1fa94f71ebee0ea7a3883a8',
            'FB2BB4925BA253FC13CFB1E341DB0DFD8541FE27B4C6373D7D180AEC19BC1471'
              => 'fb2bb4925ba253fc13cfb1e341db0dfd8541fe27b4c6373d7d180aec19bc1471',
            'FDD390379DE73265D77796341A2E38ACFCA116CF5BD04EBA5C164924D7C629C1'
              => 'fdd390379de73265d77796341a2e38acfca116cf5bd04eba5c164924d7c629c1',
        },
    },
);
1;

__END__
=pod

=head1 NAME

Class::Value::Net::DNSSEC::DS::Digest_TEST - Network-related value objects

=head1 VERSION

version 1.110250

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
and may be cloned from L<git://github.com/hanekomu/Class-Value-Net.git>.
Instead of sending patches, please fork this project using the standard
git and github infrastructure.

=head1 AUTHOR

Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2004 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

