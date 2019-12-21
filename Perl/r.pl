#!/urs/bin/perl

@contents = (<STDIN>);
chomp @contents;

#print @contents;

$prev = -1;
foreach $val (@contents) {

	if ($val != $prev) {
		print $val."\n";
		$prev = $val;
	}

}