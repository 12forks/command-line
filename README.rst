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


Usage
=====

Download a binary for your platform from
`releases page <https://github.com/12forks/command-line/releases>`_.

Generate a personal access token at `GitHub's settings page <https://github.com/settings/tokens/new>`_.

Run it in a shell::

  ./12forks --token <your-token> marijnh/Postmodern > report.rst


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

Development
===========

How to start hacking
--------------------

1. Install roswell and qlot::
     
     brew install roswell
     ros install qlot
     
2. Create local quicklisp::
     
     qlot install
     
3. Run emacs::
     
     qlot exec ros emacs roswell/12forks.ros
     
4. Start slime::
     
     M-x slime
     
5. Load the system::
     
     (push (probe-file ".") asdf:*central-registry*)
     (ql:quickload "12forks" :silent t)
     
6. Edit files and run ``analyze-*`` functions::
     
     CL-USER> (in-package :12forks)
     12FORKS> (setf (getf *config* :token) "your-personal-git")
     

How to build binaries for linux
-------------------------------

First, you need t build a docker container with `roswell <https://github.com/roswell/roswell>`_::

  docker build -t 12forks-roswell .

Then, run::

  docker run --rm -ti -v `pwd`:/app 12forks-roswell bash -c 'cd /app && ros build roswell/12forks.ros'

Similar projects
================

* http://forked.yannick.io but it shows only number of stars/forks/issues and last update time.

TODO
====

* Make analysis if some fork is popular and another forks are made from it
  instead of the base.
* Handle networking error like ``USOCKET:NS-HOST-NOT-FOUND-ERROR`` gracefully.
* Notify command-line utility's user about rate limit from GitHub and
  let him choose to fail or to sleep.
