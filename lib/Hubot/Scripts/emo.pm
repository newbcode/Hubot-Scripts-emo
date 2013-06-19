package Hubot::Scripts::emo;

use utf8;
use strict;
use warnings;
use Storable;

sub load {
    my ( $class, $robot ) = @_;
 
    $robot->hear(
        qr/^emo (.+)/i,    
        \&emo_process,
    );
}

sub emo_process {
    my $msg = shift;

    my $emot1 = '
                ^^              @@@@@@@@@
       ^^       ^^            @@@@@@@@@@@@@@@
                            @@@@@@@@@@@@@@@@@@              ^^
                           @@@@@@@@@@@@@@@@@@@@
 ~~~~ ~~ ~~~~~ ~~~~~~~~ ~~ &&&&&&&&&&&&&&&&&&&& ~~~~~~~ ~~~~~~~~~~~ ~~~
 ~         ~~   ~  ~       ~~~~~~~~~~~~~~~~~~~~ ~       ~~     ~~ ~
   ~      ~~      ~~ ~~ ~~  ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~~
   ~  ~~     ~         ~      ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~
 ~  ~       ~ ~      ~           ~~ ~~~~~~  ~      ~~  ~             ~~
       ~             ~        ~      ~      ~~   ~             ~ 
    
    ';
    store \$emot1, 'emoticonsA';
    my $emoticon = retrieve('emoticonsA');

    $msg->send("\n", split /\n/, $$emoticon);
}


1;

=pod

=head1 Name 

    Hubot::Scripts::emo
 
=head1 SYNOPSIS

    emo <emoticons> - Show Emoticons
 
=head1 AUTHOR

    YunChang Kang <codenewb@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Yunchang Kang.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself
 
=cut
