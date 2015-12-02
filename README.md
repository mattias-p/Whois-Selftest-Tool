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
We strive to make the two as equal as possible, but here is no guarantee that 
successfully running the Whois Selftest Tool means
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

In the PDT\_Whois\_TP you can find references to other useful documents.

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
Whois Selftest Tool is distributed under the terms of [this license]( LICENSE).

Dependencies
============
 * Ubuntu Linux version 12.04
 * Perl, version 5.14 or higher
 * Standard Perl libraries found on CPAN.org
   * DateTime
   * File::Slurp
   * File::Which
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
 * wget

The Whois Selftest Tool has been developed on Unbuntu Linux, but we have tried to
avoid Linux specific coding. There is, however, no guarantee that it works on
other OSs.

Installation
============
Clone the project repository and choose version according to the specification
compatibility matrix.

    $> git clone https://github.com/dotse/Whois-Selftest-Tool.git <installdir>
    $> cd <installdir>
    $> git checkout <version>

`<installdir>` is assumed to be in the PATH in code examples throughout the
rest of this document.

Create a program directory `<programdir>` to install Whois Selftest Tool in,
and copy the scripts and libraries there.

    $> cd <somewhere>
    $> mkdir <programdir>
    $> cp <installdir>/script/* <programdir>/
    $> cp -r <installdir>/lib/ PDT <programdir>/

Now the script is installed and can be run from `<programdir>`. To check the
installation run the scripts with `--help`.

    $> cd <programdir>
    $> ./whois-test --help
    $> ./whois-fetch-epp-repo-ids --help

Before use
==========
Before you use the tool, make sure that you have read the documents listed
in the reference above. Without the Test Plan ("TP") it might be hard to
understand any error message emitted.

Usage
=====
The Whois Selftest Tool provides the two commands `whois-fetch-epp-repo-ids`
and `whois-test`. If you have followed the installation above, always go to
your `<programdir>` and run the commands from there or else the scripts will
not be able to find the libraries in the `PDT` directory. You probably have to
prepend the commands with `./` just as in the instructions above

`whois-fetch-epp-repo-ids` fetches the EPP Repository Identifiers registered
with IANA and stores them in a text file inside the user's home directory.

`whois-test` validates the Whois responses according to the format specification
in the PDT\_Whois\_TP document.

The database of EPP Repository Identifiers is a prerequisite for running
`whois-test` command, so `whois-fetch-epp-repo-ids` must be run at least once
before `whois-test` is used for the first time.  After that, run
`whois-fetch-epp-repo-ids` again to update the database every time 
the Whois Selfttest Tool is to be used.

See the man pages for the respective commands for details on how to run them.
(You can use the `--man` option to view the man pages)

Known issues
============
The Perl library that converts between IDN U-label and IDN A-label, Net::IDN::encode,
will magically make upper-case characters into its equivalent lower-case characters.
The upper-case characters are not valid in a U-label. This issue can make false
positive validations of Whois responses when the "Internationalized Domain Name"
field is present in a Domain Object response.


