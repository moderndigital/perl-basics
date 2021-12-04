use strict;
use warnings;
use LWP::UserAgent;
use HTTP::Cookies;

my $cookie_jar = HTTP::Cookies->new(file => "./lwp_cookies.dat", autosave => 1);
my $user_agent  = LWP::UserAgent->new(cookie_jar => $cookie_jar, protocols_allowed => ['http', 'https'], timeout => 10);
 
# what does this do?
$user_agent->env_proxy;
 
my $response = $user_agent->get('https://www.google.com');
 
if ($response->is_success) 
{
    print $response->decoded_content;
}
else 
{
    die $response->status_line;
}