Purpose
=======
The purpose of the Whois Selftest Tool is to help gTLD applicants prepare for
[Pre-Delegation Testing]( http://newgtlds.icann.org/en/applicants/pdt) (PDT) by
providing pre-PDT Whois output validation.

Scope
=====
While Whois Selftest Tool _does_ validate Whois output and it _does_ strive to
reflect the state of PDT Whois output validation, it _is not_ authoritative on
the outcome of PDT and it _is_ subject to change.

Disclaimer
----------
The Whois Selftest Tool and the actual Whois testing under PDT are not equal.
There is no guarantee that successfully running the Whois Selftest Tool means
that the same Whois system will pass the Whois testing under PDT. For example,
the parts of Whois tests under Whois that include DNS lookups and TCP
connections are not included in the Whois Selftest Tool. For a complete
reference of the Whois tests under PDT see the PDT Whois documents.

Version history
===============
* v1.0.0 - Initial public release (2015-12-03)

References
==========
The [Pre-Delegation Testing]( http://newgtlds.icann.org/en/applicants/pdt)
microsite hosts the following documents relevant to the Whois Selftest Tool:

* The PDT\_Whois\_TC\_CLI and PDT\_Whois\_TC\_Web documents, within the PDT Test
  Specifications zip, specifies the test cases that the Whois Selftest Tool
  partially implements.
* The PDT\_Whois\_TP document, within the PDT Test Specifications zip, specifies
  the format specification that the Whois Selftest Tool implements.

Specification compatibility matrix
----------------------------------
Refer to this compatibility matrix when deciding which version of Whois Selftest
Tool to use.

<table>
<tr><th>Whois Selftest Tool version</th><th>PDT Test Specifications</th></tr>
<tr><td>v1.0.0</td><td>v.2.8</td></tr>
</table>

Licensing
=========
Whois-Selftest-Tool is distributed under the terms of [this license]( LICENSE).

Dependencies
============
 * Ubuntu 12.04
 * Perl 5.14
   * DateTime
   * File::Slurp
   * Net::IDN::Encode
   * Net::IP
   * Readonly
   * Regexp::IPv6
   * Test::Differences
   * Test::MockObject
   * Text::CSV
   * Text::CSV\_XS
   * URI
   * YAML::Syck

Installation
============
Clone the project repository and choose version according to the specification
compatibility matrix.

    $> git clone https://github.com/dotse/Whois-Selftest-Tool.git <installdir>
    $> cd <installdir>
    $> git checkout <version>

`<installdir>` is assumed to be in the PATH in code examples throughout the
rest of this document.

Usage
=====
The Whois-Selftest-Tool provides the two commands `whois-fetch-epp-repo-ids`
and `whois-test`.

`whois-fetch-epp-repo-ids` fetches the EPP Repository Identifiers registered
with IANA and stores them in a text file inside the user's home directory.

`whois-test` validates the Whois responses according to the format specification
in the PDT\_Whois\_TP document.

The database of EPP Repository Identifiers is a prerequisite for running
`whois-test` command, so `whois-fetch-epp-repo-ids` should be run at least once
before `whois-test` is used for the first time.  After that, run
`whois-fetch-epp-repo-ids` again to update the database.

See the man pages for the respective commands for details on how to run them.
(You can use the `--man` option to view the man pages)
