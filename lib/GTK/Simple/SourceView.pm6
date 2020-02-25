
use NativeCall;
use GTK::Simple::Raw :source-view, :DEFAULT;
use GTK::Simple::Common;
use GTK::Simple::Widget;

unit class GTK::Simple::SourceView is GTK::Simple::TextView;


submethod BUILD() {
    $!gtk_widget = gtk_source_view_new();
    $!buffer = gtk_source_view_get_buffer($!gtk_widget);
}

