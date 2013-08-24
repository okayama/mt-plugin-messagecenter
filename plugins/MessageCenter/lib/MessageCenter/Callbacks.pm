package MessageCenter::Callbacks;
use strict;

sub _cb_set_notification_dashboard {
    my ( $cb, $loop_notification_dashboard ) = @_;
    my $app = MT->instance();
    my $plugin = MT->component( 'MessageCenter' );
    my @notifications = (
        {
            level  => 'error',
            text   => $plugin->translate( 'Error' ),
            detail => $plugin->translate( 'You have an error.' ),
        },
        {
            level  => 'success',
            text   => $plugin->translate( 'Success' ),
            detail => $plugin->translate( 'You got a success.' ),
        },
        {
            level  => 'warning',
            text   => $plugin->translate( 'Warning' ),
            detail => $plugin->translate( 'You got a warning.' ),
        },
        {
            level  => 'success',
            text   => $plugin->translate( 'No detail' ),
        },
        {
            text   => $plugin->translate( 'Default icon' ),
            detail => $plugin->translate( 'You got a warning.' ),
        },
        {
            level  => 'foo',
            text   => $plugin->translate( 'No icon' ),
            detail => $plugin->translate( 'Fooooooo!' ),
        },
        {
            level  => 'error',
            text   => $plugin->translate( 'Hi, [_1]', MT::Util::encode_html( $app->user->nickname ) ),
            detail => $plugin->translate( 'Work harder.' ),
        },
    );
    push @{ $loop_notification_dashboard }, @notifications;
}

1;
