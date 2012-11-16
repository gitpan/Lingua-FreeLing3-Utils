#!perl -T

use Lingua::FreeLing3::Utils qw/ngrams/;
use Test::More tests => 10;

my $text=<<'EOT';
E o tempo responde ao tempo
que o tempo tem tanto tempo
quanto tempo o tempo tem.
EOT

my $data = ngrams({n=>1, l=>'pt'}, $text);
ok($data->{'tempo'}->{count} == 6, 'simple unigram count');
ok(sprintf ".8f", $data->{'tempo'}->{p} eq '0.33333333', 'simple unigram p');
ok($data->{'E'}->{count} == 1, 'simple unigram count');
ok(sprintf ".8f", $data->{'E'}->{p} eq '0.05555556', 'simple unigram p');
ok($data->{'tem'}->{count} == 2, 'simple unigram count');
ok(sprintf ".8f", $data->{'tem'}->{p} eq '0.11111111', 'simple unigram p');

$data = ngrams({n=>2, l=>'pt'}, $text);
ok($data->{'tempo tem'}->{count} == 2, 'simple bigram count');
ok(sprintf ".8f", $data->{'tempo tem'}->{p} eq '0.33333333', 'simple bigram p');
ok($data->{'o tempo'}->{count} == 3, 'simple bigram count');
ok(sprintf ".8f", $data->{'o tempo'}->{p} eq '0.23076923', 'simple bigram p');
