#!/usr/bin/perl
#!/usr/bin/perl -w
use strict;
use v5.10;
use lib './';
use experimental 'smartmatch';
use CGI;
use URI;
use RDF::Trine;
#use FAIR::Accessor::Distribution;
#use FAIR::Accessor::Container;
#use FAIR::Accessor::MetaRecord;

# use Class::Inpector; #  one day check if execute is exported from the module
use JSON::Parse 'parse_json';

my $bodyF1A = '{"subject": "10.5061/dryad.gn219","spec": "https://fairsharing.org/bsg-s001182"}';
my $bodyF4 = '{"subject": "10.5061/dryad.gn219","search_uri": "https://www4.bing.com/search?q=10.5061%2Fdryad.gn219&qs=n&form=QBLH&sp=-1&pq=10.5061%2Fdryad.gn219&sc=0-19&sk=&cvid=FEC09C5AA1404CDEB062B76F00CC9180"}';
# my $bodyF4 = '{"subject": "10.5061/dryad.gn219","search_uri": "https://www.google.com/search?q=10.5061%2Fdryad.gn219&oq=10.5061%2Fdryad.gn219&aqs=chrome..69i57.727j0j4&sourceid=chrome&ie=UTF-8"}';
my $body = '{"subject": "10.5061/dryad.gn219","spec": "https://fairsharing.org/bsg-s001182"' # FM-F1A & FM-A1.2
	.', "search_uri": "https://www4.bing.com/search?q=10.5061%2Fdryad.gn219&qs=n&form=QBLH&sp=-1&pq=10.5061%2Fdryad.gn219&sc=0-19&sk=&cvid=FEC09C5AA1404CDEB062B76F00CC9180"' # FM-F4
	.'}';

my $fileF1A = 'Metrics/metric_unique_identifier';
my $fileF4 = 'Metrics/metric_searchable_index';
my $file = $fileF1A; #$fileF4;
my $module;
		eval {
		    $module = $file;
		    $module  =~ s|/|::|g;
		    require $file . '.pm';
		} or do {
			print "Content-type: text/plain\n\n";
			print "NO SUCH TEST MODULE - $module  $file.pm\n";
			die "No match to module $module for fair metrics\n";
			exit 1;
		};
# my $body = {
# 	subject   => "10.5061/dryad.gn219",
# 	spec => "https://fairsharing.org/bsg-s001182",
# };
print $module->execute_metric_test($body);

