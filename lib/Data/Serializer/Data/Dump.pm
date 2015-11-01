package Data::Serializer::Data::Dump;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent 'Data::Serializer';
use Data::Dump qw(dump);

sub serialize {
    my ($self, $val) = @_;
    dump($val);
}

sub deserialize {
    my ($self, $val) = @_;

    my $res = eval $val;
    die "Data::Serializer error: $@\twhile evaluating:\n $val" if $@;
    $res;
}

1;
# ABSTRACT: Bridge between Data::Serializer and Data::Dump

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 SEE ALSO

L<Data::Serializer>

L<Data::Dump>
