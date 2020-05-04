#use warnings
use feature "say";
system("clear;figlet -l Rot-13");
my $intro=<<HEREDOC
	
		By Josh
	1)FIist Perl is very easy
	2)Perl is nearly unlimited
	3)Perl is mostly fast

HEREDOC
;
say $intro;
my $choice;
print("[1]- Decrypt/Encrypt");
print "\ninsert a number: ";
$choice=<STDIN>;
if($choice==1){
	my $msg;
	print "insert the message: ";
	$msg=<STDIN>;
	chomp $msg;
	$msg=~tr/a-zA-z/n-za-mN-ZA-M/;
	print qq{message: $msg};
}
