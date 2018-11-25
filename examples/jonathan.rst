=======================
Rudolph-Miller/jonathan
=======================

kkazuo/jonathan
===============

gh-pages
--------

Update docs at 1492046643. [ci skip]

nzioki/jonathan
===============

gh-pages
--------

Update docs at 1492046643. [ci skip]

libre-man/jonathan
==================

array-as-vector
---------------

Add tests for parsing JSON arrays to vectors.

Make it possible to parse JSON arrays to sequences.

Update docs for the new `:array-as` key.

Fix a bug in the compiler macro for `PARSE`

gh-pages
--------

Update docs at 1492046643. [ci skip]

fisxoj/jonathan
===============

gh-pages
--------

Update docs at 1454523706. [ci skip]

knobo/jonathan
==============

gh-pages
--------

Update docs at 1454523706. [ci skip]

des75/jonathan
==============

gh-pages
--------

Update docs at 1454523706. [ci skip]

macdavid313/jonathan
====================

gh-pages
--------

Update docs at 1451540003. [ci skip]

tmccombs/jonathan
=================

ccl-surragate-test
------------------

Test surrogate pairs on ccl.

gh-pages
--------

Update docs at 1451540003. [ci skip]

output-stream
-------------

Allow serializing JSON directly to a stream.

Allow writing to binary stream.

Add tests for output streams.

Also changed keyword argument from :stream to :output.

Fix compiler macro for output streams.

parse-octets
------------

Add support for parsing from octets.

Fixes #14.

safe-string-to-bytes
--------------------

Improve character encoding.

This includes two fixes:
1. Correctly encode control characters using \u notation, as described
by the JSON specification.
2. Encode characters using UTF-8 when :octets is true. Previously
non-ASCII characters either caused invalid JSON or threw an error.

Fix utf-8 encoding non-BMP characters on ABCL

Because ABCL (and Java) uses utf-16 internally, so non-BMP character are
represented with surrogate pairs.

Change flet to macrolet in test.

fukamachi/jonathan
==================

gh-pages
--------

Update docs at 1447371529. [ci skip]

MNBarry/jonathan
================

gh-pages
--------

Update docs at 1447371529. [ci skip]

g000001/jonathan
================

gh-pages
--------

Update docs at 1440884092. [ci skip]

snmsts/jonathan
===============

gh-pages
--------

Update docs at 1440884092. [ci skip]

travis-osx
----------

Enable osx test.

rwiker/jonathan
===============

gh-pages
--------

Update docs at 1440884092. [ci skip]

