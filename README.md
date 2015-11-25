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
   * Regexp::IPv6
   * Test::Differences
   * Test::MockObject
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
The `whois`, `file` and `iconv` are general tools available on all Mac, Unix or
Linux computers.

1. Select a whois server to query and an existing object to query for.
  * Domain name, Registrar or Nameserver objects are supported
  * E.g. the domain name *domain.example* on the server *1.2.3.4*
2. Send the query and save the result into a file.
  * E.g. `whois -h 1.2.3.4 domain.example > queryoutput.txt`
3. Ensure that the character encoding is UTF-8 or ASCII
  * E.g. `file queryoutput.txt`
  * Convert the response with `iconv` if the encoding is neither UTF-8 nor
    ASCII
4. Validate the fetched Whois response.
  * E.g. `whois-test --domain=domain.example --epp-repo-id=example
    queryoutput.txt`
5. Resolve any errors indicated in the output and rerun the validation command
   in step 4.  Note that one detected error may block the validator from
   detecting additional (possibly more serious) errors.
