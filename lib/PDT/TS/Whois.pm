package PDT::TS::Whois;
use strict;
use warnings;
use 5.014;

=head1 NAME

PDT::TS::Whois - Validates Whois output

=head1 DESCRIPTION

This module validates Whois output according to the ICANN specification.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

The library contains the following sub-modules:
 * L<PDT::TS::Whois::Lexer>     - Takes a string and produces a token/value/errors triplet for each line.
 * L<PDT::TS::Whois::Grammar>   - Exports a datastructure representing the ICANN specification.
 * L<PDT::TS::Whois::Types>     - Type checker providing most rules required by the ICANN specification and a means for the user to go the last mile.
 * L<PDT::TS::Whois::Validator> - Validates the output of a lexer according to a grammar and types.

=head1 AUTHOR

Mattias Päivärinta, C<< <mattias.paivarinta at iis.se> >>

=head1 BUGS

Please report any bugs or feature requests to C<mats.dufberg at iis.se>, or through
the web interface at L<http://jira.iis.se/browse/PDTT>.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc PDT::TS::Whois


=back

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2015 IIS (The Internet Infrastructure Foundation).
All rights reserved.

This module is subject to the following licensing conditions.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

* Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

THE SOFTWARE IS PROVIDED AS-IS AND MAKES NO REPRESENTATIONS OR
WARRANTIES OF ANY KIND CONCERNING THE WORK, EXPRESS, IMPLIED,
STATUTORY OR OTHERWISE, INCLUDING, WITHOUT LIMITATION, WARRANTIES OF
TITLE, MERCHANTIBILITY, FITNESS FOR A PARTICULAR PURPOSE,
NONINFRINGEMENT, OR THE ABSENCE OF LATENT OR OTHER DEFECTS, ACCURACY,
OR THE PRESENCE OF ABSENCE OF ERRORS, WHETHER OR NOT DISCOVERABLE.

IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
DAMAGE.

=cut

1;    # End of PDT::TS::Whois
