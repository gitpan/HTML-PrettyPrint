#!/Users/metaperl/install/bin/perl

use HTML::PrettyPrint;

my $file = shift or die "must give html file to pretty-print";

my $tree = HTML::PrettyPrint->new_from_file($file);

$tree->dump; # a method we inherit from HTML::Element

print $tree->dump_html;
