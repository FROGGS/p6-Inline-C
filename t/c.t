
use lib 'lib';

use Test;

plan 1;

use soft;
use Inline;

# returns must be after inline?
sub a_plus_b( int32, int32 ) is inline('C') returns int32 {'
    DLLEXPORT int a_plus_b (int a, int b) {
        return a + b;
    }
'}

is a_plus_b( 7, 35 ), 42, 'a_plus_b';
