# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Socket-More-Interface.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use Test::More; 
BEGIN { use_ok('Socket::More::Interface') };


use Socket::More::Interface;
{
	#Do we get any interfaces at all?
	my @interfaces=getifaddrs;
	ok @interfaces>=1, "interfaces returned";
}

done_testing;
