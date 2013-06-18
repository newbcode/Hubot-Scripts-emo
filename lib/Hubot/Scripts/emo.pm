package Hubot::Scripts::emo

use strict;
use warnings;

sub load {
    my ($class, $robot ) = @_;
    qr/^emo (.+)/i;
        \&emo_process,
};

sub emo_process {

        
}


