==============
joaotavora/sly
==============

marsam/sly
==========

master
------

Make sly-mrepl-mode map inherit from comint mode.

Update .travis.yml

+ Use cl-travis main repository

+ Test only in Emacs recent versions

+ Remove travis ci tests for cmucl.

Add check on sly-mrepl--prompt property

This fails when `comint-clear-buffer` is called and removes
`sly-mrepl--prompt` property.

bsmr-emacs/sly
==============

auto-copy-condition-to-repl
---------------------------

Wip.

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

bbatsov/sly
===========

auto-copy-condition-to-repl
---------------------------

Wip.

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

patch-1
-------

Fix a typo.

attila-lendvai/sly
==================

auto-copy-condition-to-repl
---------------------------

Wip.

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

slime-cherry-picks
------------------

* README.md (Fork): Explain the "why of SLY"

Fix gray stream issue for SBCL

The pretty printer seems to call the non-standard
stream-line-length generic function.

* lib/lisp/backend/swank-sbcl.lisp (sb-gray:stream-line-length):
  Implement default.

(cherry picked from SLIME commit
b3bd68064b2012eca6b61cc938288f6c245acbe9)

Conflicts:
	ChangeLog.

Minor cleanup in slime-parse-tests.el

* test/slime-parse-tests.el (form-up-to-point.1): Don't
hardcode swank::%cursor-marker% use the slime-cursor-marker
constant instead.

(cherry picked from SLIME commit
228285b8bee3289c28e6a8b086174d7ce1be5cfd)

Conflicts:
	contrib/ChangeLog
	contrib/test/sly-parse-tests.el.

Only test contribs that actually have tests.

* Makefile (CONTRIB_TESTS): New variable.

(cherry picked from SLIME commit
fac577dd49c2e3d716d7ebef801d5ef4f7ce668b)

Conflicts:
	contrib/ChangeLog
	contrib/Makefile.

spacebat/sly
============

auto-copy-condition-to-repl
---------------------------

Wip.

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

master
------

Fix post-command-hook error after using #v

* sly-mrepl.el (sly-mrepl--highlight-backreferences-maybe): use cl-first and cl-rest

When trying out #v<n> I found that the first time a post-command-hook
error would fire to the effect that rest was an unknown function, after
which the #v mechanism was slightly broken. I tracked it down to
sly-mrepl.el.

slime-cherry-picks
------------------

* README.md (Fork): Explain the "why of SLY"

Fix gray stream issue for SBCL

The pretty printer seems to call the non-standard
stream-line-length generic function.

* lib/lisp/backend/swank-sbcl.lisp (sb-gray:stream-line-length):
  Implement default.

(cherry picked from SLIME commit
b3bd68064b2012eca6b61cc938288f6c245acbe9)

Conflicts:
	ChangeLog.

Minor cleanup in slime-parse-tests.el

* test/slime-parse-tests.el (form-up-to-point.1): Don't
hardcode swank::%cursor-marker% use the slime-cursor-marker
constant instead.

(cherry picked from SLIME commit
228285b8bee3289c28e6a8b086174d7ce1be5cfd)

Conflicts:
	contrib/ChangeLog
	contrib/test/sly-parse-tests.el.

Only test contribs that actually have tests.

* Makefile (CONTRIB_TESTS): New variable.

(cherry picked from SLIME commit
fac577dd49c2e3d716d7ebef801d5ef4f7ce668b)

Conflicts:
	contrib/ChangeLog
	contrib/Makefile.

TBRSS/sly
=========

auto-copy-condition-to-repl
---------------------------

Wip.

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

slime-cherry-picks
------------------

* README.md (Fork): Explain the "why of SLY"

Fix gray stream issue for SBCL

The pretty printer seems to call the non-standard
stream-line-length generic function.

* lib/lisp/backend/swank-sbcl.lisp (sb-gray:stream-line-length):
  Implement default.

(cherry picked from SLIME commit
b3bd68064b2012eca6b61cc938288f6c245acbe9)

Conflicts:
	ChangeLog.

Minor cleanup in slime-parse-tests.el

* test/slime-parse-tests.el (form-up-to-point.1): Don't
hardcode swank::%cursor-marker% use the slime-cursor-marker
constant instead.

(cherry picked from SLIME commit
228285b8bee3289c28e6a8b086174d7ce1be5cfd)

Conflicts:
	contrib/ChangeLog
	contrib/test/sly-parse-tests.el.

Only test contribs that actually have tests.

* Makefile (CONTRIB_TESTS): New variable.

(cherry picked from SLIME commit
fac577dd49c2e3d716d7ebef801d5ef4f7ce668b)

Conflicts:
	contrib/ChangeLog
	contrib/Makefile.

crashcoredump/sly
=================

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

slime-cherry-picks
------------------

* README.md (Fork): Explain the "why of SLY"

Fix gray stream issue for SBCL

The pretty printer seems to call the non-standard
stream-line-length generic function.

* lib/lisp/backend/swank-sbcl.lisp (sb-gray:stream-line-length):
  Implement default.

(cherry picked from SLIME commit
b3bd68064b2012eca6b61cc938288f6c245acbe9)

Conflicts:
	ChangeLog.

Minor cleanup in slime-parse-tests.el

* test/slime-parse-tests.el (form-up-to-point.1): Don't
hardcode swank::%cursor-marker% use the slime-cursor-marker
constant instead.

(cherry picked from SLIME commit
228285b8bee3289c28e6a8b086174d7ce1be5cfd)

Conflicts:
	contrib/ChangeLog
	contrib/test/sly-parse-tests.el.

Only test contribs that actually have tests.

* Makefile (CONTRIB_TESTS): New variable.

(cherry picked from SLIME commit
fac577dd49c2e3d716d7ebef801d5ef4f7ce668b)

Conflicts:
	contrib/ChangeLog
	contrib/Makefile.

ska80/sly
=========

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

header-cleanups
---------------

Headers and trailing whitespaces cleanups.

* slynk/slynk-backend.lisp:
* slynk/backend/abcl.lisp:
* slynk/backend/sbcl.lisp:
* slynk/backend/mkcl.lisp:
* slynk/backend/lispworks.lisp:
* slynk/backend/ecl.lisp:
* slynk/backend/corman.lisp:
* slynk/backend/clasp.lisp:
* slynk/backend/ccl.lisp:
* slynk/backend/allegro.lisp:
* slynk/backend/abcl.lisp: Headers cleanups.  Also cleanup trailing whitespaces.

slime-cherry-picks
------------------

* README.md (Fork): Explain the "why of SLY"

Fix gray stream issue for SBCL

The pretty printer seems to call the non-standard
stream-line-length generic function.

* lib/lisp/backend/swank-sbcl.lisp (sb-gray:stream-line-length):
  Implement default.

(cherry picked from SLIME commit
b3bd68064b2012eca6b61cc938288f6c245acbe9)

Conflicts:
	ChangeLog.

Minor cleanup in slime-parse-tests.el

* test/slime-parse-tests.el (form-up-to-point.1): Don't
hardcode swank::%cursor-marker% use the slime-cursor-marker
constant instead.

(cherry picked from SLIME commit
228285b8bee3289c28e6a8b086174d7ce1be5cfd)

Conflicts:
	contrib/ChangeLog
	contrib/test/sly-parse-tests.el.

Only test contribs that actually have tests.

* Makefile (CONTRIB_TESTS): New variable.

(cherry picked from SLIME commit
fac577dd49c2e3d716d7ebef801d5ef4f7ce668b)

Conflicts:
	contrib/ChangeLog
	contrib/Makefile.

clarkema/sly
============

final-renames
-------------

Massive swank -> slynk rename.

Massive sldb -> sly-db rename.

Add sly-retro contrib and enable it by default

This contrib ensures that SLY is not locked out of the existing SWANK
communication protocol.

* sly-autoloads.el (sly-contribs): Add `sly-retro' contrib by default.

* sly.el (sly-contribs): Add `sly-retro' contrib by default.
(sly-net-send-translator): New variable.
(sly-net-send): Use it.

* slynk.asd (:slynk-retro): New defsystem.

* contrib/sly-retro.el: New contrib.

* contrib/slynk-retro.lisp (:slynk-retro): New package.

* lib/lisp/slynk-rpc.lisp (*translating-swank-to-slynk*): New variable.
(*validate-input*): Removed.
(read-form): Use *TRANSLATING-SWANK-TO-SLYNK* and TRANSLATING-READ.
(validating-read): Removed.
(simple-read): Removed.
(translating-read): New.
(maybe-convert-package-designator): New.

* lib/lisp/slynk.lisp (*slynk-require-hook*): New hook.
(slynk-require): Run *SLYNK-REQUIRE-HOOK*
(cherry picked from commit 23548d20eefe885c16618d27145cc23bc8eef8b9)

NEWS.md tweaks.

Update CONTRIBUTING.md with SLYNK/SWANK description.

slime-cherry-picks
------------------

* README.md (Fork): Explain the "why of SLY"

Fix gray stream issue for SBCL

The pretty printer seems to call the non-standard
stream-line-length generic function.

* lib/lisp/backend/swank-sbcl.lisp (sb-gray:stream-line-length):
  Implement default.

(cherry picked from SLIME commit
b3bd68064b2012eca6b61cc938288f6c245acbe9)

Conflicts:
	ChangeLog.

Minor cleanup in slime-parse-tests.el

* test/slime-parse-tests.el (form-up-to-point.1): Don't
hardcode swank::%cursor-marker% use the slime-cursor-marker
constant instead.

(cherry picked from SLIME commit
228285b8bee3289c28e6a8b086174d7ce1be5cfd)

Conflicts:
	contrib/ChangeLog
	contrib/test/sly-parse-tests.el.

Only test contribs that actually have tests.

* Makefile (CONTRIB_TESTS): New variable.

(cherry picked from SLIME commit
fac577dd49c2e3d716d7ebef801d5ef4f7ce668b)

Conflicts:
	contrib/ChangeLog
	contrib/Makefile.

PuercoPop/sly
=============

abcl-fals
---------

.gitignore: Ignore ABCL uncompressed FASLs.

customize-mprepl-history-file
-----------------------------

Make where the input history is saved customizable

* sly-mrepl.el (sly-mrepl-history-file-name): Add new variable
(sly-mrepl-mode-map): Use sly-mrepl-history-file-name instead of
  hard-coded path

Closes #101.

issue-51
--------

Closes #51: make sly-quit-threas-buffer interactive

* sly.el (sly-quit-threads-buffer): Make function interactive.

issue-87-2
----------

Exclude apparently uninterned symbols from completions

* slynk/slynk-completion.lisp (qualified-matching): only process symbols
  with a home package

Closes #87.

issue-87
--------

Exclude apparently uninterned symbols from completions

* slynk/slynk-completion.lisp (do-all-symbols-with-home-package): New
  function
  (qualified-matching): restrict iteration to all symbols with home
  packages

Closes #87.

keybindings
-----------

Modify sly-doc-map keybindings

(sly.el): Remove Ctrl from sly-doc-map for common-lisp-hyperspec-format
          and common-lisp-hyperspec-lookup-reader-macro
(sly.texi): Update the documentation to reflect the new keybindings.

patch-2
-------

Slynk-mrepl.lisp: Typo.

patch-3
-------

Sly.el: Remove cl prefix to the english word 'the'

Introduced unintentionally when cleaning code due to the cl to cl-lib transition.

patch-4
-------

Sly-autodoc.el (sly-autodoc-manually): Fix.

patch-5
-------

* sly-autodoc.el (sly-autodoc-manually):  typo in docstring.

patch-6
-------

Fix typo: no -> to

* lib/sly-completion.el (sly--completion-explanation)

sexp-at-point-prompt-bounds
---------------------------

Sly-sexp-at-point shouldn't search past the prompt

* (sly.el) sly-bounds-of-sexp-at-point: narrow to text after prompt
    before calling bounds-of-thing-at-point
    sly-prompt-end: new helper function.

sly-mrepl--process
------------------

Closes #40

sly-mrepl.el (sly-mrepl--process): If not in the a mrepl buffer make a
best effort attempt to guess the buffer.

slyfun-extraction
-----------------

Track defined slyfuns in *slyfuns*

* slynk.lisp (*slyfuns*): New variable
  (defslyfun): Save function definition in *slyfuns*

Using a hash-table instead of a list to avoid duplicate entries when
redefining a defslyfun.

slynk-completion-refactor
-------------------------

Exclude apparently uninterned symbols from completions

* slynk/slynk-completion.lisp (qualified-matching): only process symbols
  with a home package

Closes #87.

Document slynk-completion.lisp

* slynk/slynk-completion.lisp (defpackage :slynk-completion): Add
  documentation option
  (score-completion): Add documentation string
  (to-chunks): Add documentation string
  (flex-matches): Add documentation string
  (sort-by-score): Add documentation string
  (keywords-matching): Add documentation string
  (accessible-matching): Add documentation string
  (qualified-matching): Add documentation string.

Change loop local variable initialization to m-v-b

In CCL (loop with (a b) = (multiple-value-list (values) ...) signals a
simple-program-error condition.

* slynk/slynk-completion.lisp (flex-completions): Using m-v-b instead of
  loop's with clause as a work around to a bug in CCL.

Refactor slynk-completion

* slynk/slynk-completion.lisp (flex-matches): align loop clauses
  (collect-maybe): Take advantage of when-let
  (completion-score): New function
  (sort-by-score): Replace fourth with completion-score
  (preferred-package-name): New function
  (symbol-information): New function
  (qualified-matching-1): New function
  (qualified-matching): Rewrite in terms of qualified-matching-1

* slynk/slynk-backend.lisp (mappend): New function.

source-path-source-position
---------------------------

Handle SBCL backquote objects in source-path-parser

* (slynk/slynk-source-path-parser.lisp) nth-form: new function that
     extracts the expression when looking at a comma structure in
     sbcl. Otherwise similar to nth.
  source-path-source-position: use nth-form instead of nth.

switch-to-mrepl
---------------

Add interactive function switch-to-mrepl

    Which switches to the last used mrepl.

xref-not-error
--------------

Make sly-xref not raise an error when not implemented

* sly.el (sly-xref): stop evaluation if xref is not implemented.
(sly-check-xref-implemented): replace error with sly-display-oneliner.

Add docstings

* sly.el (sly-check-xref-implement): Add docstring
(sly-xref-type): Add docstring.

xref-package-file-variable
--------------------------

Remove package from file local variables

The package file local variable in xref.lisp was set to the old package
name, xref. The package name was changed on commit
440806f6f42ee02ee2589a9f41ac290fe337705f

Similarly, the package file local variable in metering.lisp was set to
the old package name, monitor. The package name was changed on commit
1bdbdda751bfa54764d3f09194de914c52057c77.

