========
12 Forks
========

Rationale
=========

GitHub is great, but sometimes it is difficult to estimate if there are
some valuable code in project's forks. Especially for popular project
like xxx.

This script build a report with all non merged forks and their commit
messages. This allows to read or grep through and find if there are something
useful.

Probably, a webservice could be created to automate this precedure.


Ideas for webservice
====================

* Service could send a pull request when on new commits to project's forks.
* An image with badge could countain number of non-merged forks and link
  from this badge should go to the page with full report.
* Service could be configured with simple yaml config file placed inside the
  repository.
* Some king of gamification engine could be used to praise forks merging.
* Service could remind people who made a fork and having some non merged
  commits, to send a pull request or delete the fork if it was experimental.
* Embedd this functionality into the GitHub? :)

Donations
=========

This service was started as opensource and nonprofit. Please, donate your time
if you wish to support it.

TODO
====

* Optimize processing speed.
* Add logging and verbose output option.
* Make analysis if some fork is popular and another forks are made from it
  instead of the base.
* Handle networking error like "USOCKET:NS-HOST-NOT-FOUND-ERROR" gracefully.
* Handle rate limit from GitHub somehow.
