#!/usr/bin/perl -wT

use strict;
use CGI;
use CGI::Carp qw ( fatalsToBrowser );
use File::Basename;

$CGI::POST_MAX = 1024 * 5000;
my $safe_filename_characters = "a-zA-Z0-9_.-";
my $upload_dir = "/home/u/user/neural/upload";

my $query = new CGI;
my $filename = $query->param("photo");

if ( !$filename )
{
print $query->header ( );
print "There was a problem, try a better photo, don't be a dick.";
exit;
}

my ( $name, $path, $extension ) = fileparse ( $filename, '..*' );
$filename = $name . $extension;
$filename =~ tr/ /_/;
$filename =~ s/[^$safe_filename_characters]//g;

if ( $filename =~ /^([$safe_filename_characters]+)$/ )
{
$filename = $1;
}
else
{
die "Filename contains invalid characters, are you trying to hessuhopottaa this service!?";
}

my $upload_filehandle = $query->upload("photo");

open ( UPLOADFILE, ">$upload_dir/$filename" ) or die "$!";
binmode UPLOADFILE;

while ( <$upload_filehandle> )
{
print UPLOADFILE;
}

close UPLOADFILE;

#$queue=system("sh /home/t/ttur/queue.sh");
#$wait=($queue*7);

print $query->header ( );
print <<END_HTML;
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Thanks!</title>
</head>
<body>
  <p>Your neural-styled image may appear <a href="http://WEB_SERVER_ADDRESS">here</a> at some point. No prom
ises though, this shit is <i>flimsy</i>.</p>
</body>
</html>
END_HTML
