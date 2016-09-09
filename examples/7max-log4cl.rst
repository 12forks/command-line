===========
7max/log4cl
===========

knobo/log4cl
============

master
------

Add an explict dependency on sb-posix.

Remove trailing whitespace.

Remove LOG-EXPR calls

LOG-EXPR throws an error because it isn't defined, causing
LOG4SLILME-LEVEL-SELECTION to fail.

Fix problem with join-thread-error when stop-hierarchy-watcher-thread on sbcl.

Make log4cl work on abcl

To reproduce bug:
(log4cl:add-appender (log:category :foo.bar)
                     (make-instance 'log4cl:file-appender :file "/tmp/tester.log"))

Formatting fix.

tmccombs/log4cl
===============

log4slime-fix
-------------

Remove trailing whitespace.

Remove LOG-EXPR calls

LOG-EXPR throws an error because it isn't defined, causing
LOG4SLILME-LEVEL-SELECTION to fail.

sharplispers/log4cl
===================

master
------

On SBCL, explicitly depend on SB-POSIX.

fukamachi/log4cl
================

depends-on-sb-posix
-------------------

Add an explict dependency on sb-posix.

markhdavid/log4cl
=================

master
------

Specialize args LOGGER, LOG-FUNC on T to eliminate unused warnings.

orivej/log4cl
=============

master
------

Fix for swank-backend renaming.

scymtym/log4cl
==============

wip-syslog-appender
-------------------

Added syslog appender.

