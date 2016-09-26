===========
slime/slime
===========

brown/slime
===========

fix-byte-compile-warnings
-------------------------

Fix byte-compile warnings in contrib/slime-fontifying-fu.el.

When loading a Slime that has already been byte compiled, the explicit
byte compilation code in contrib/slime-fontifying-fu.el generates
warnings.  Use the same technique as used in slime-parse.el -- only byte
compile if it's necessary.

kc-/slime
=========

replace-history-from-mark
-------------------------

Add the option to look for history from (mark).

The behaviour is controlled through slime-repl-history-use-mark -- when
nil, the original history replacement is done.

* Add a `slime-repl-history-yank-start' function that returns the
  furthermost position from (mark) and the start of the current input.

* Replace input from slime-r-h-yank-start instead of the beggining.

For example:

CL-USER> (foo (bar :baz 23))
42
CL-USER> (let ((x C-SPC (foo M-p

         ;; will replace from `(foo' to yield:

         (let ((x (foo (bar :baz 23))

3b/slime
========

arglist-hooks
-------------

Add hooks for extending arglist lookup.

* contrib/swank-arglists.lisp (*valid-operator-symbol-p-hooks*):
New variable.
(valid-operator-symbol-p): use it

* swank-backend.lisp (%arglist): rename interface from arglist
(*arglist-hooks*): new variable, default to %arglist
(arglist): new function, call functions in *arglist-hooks*

* swank-abcl.lisp (%arglist): renamed from arglist
* swank-allegro.lisp (%arglist): renamed from arglist
* swank-ccl.lisp (%arglist): renamed from arglist
* swank-clisp.lisp (%arglist): renamed from arglist
* swank-cmucl.lisp (%arglist): renamed from arglist
* swank-corman.lisp (%arglist): renamed from arglist
* swank-ecl.lisp (%arglist): renamed from arglist
* swank-lispworks.lisp (%arglist): renamed from arglist
* swank-sbcl.lisp (%arglist): renamed from arglist
* swank-scl.lisp (%arglist): renamed from arglist.

* swank-backend.lisp (arglist): export symbol
(*arglist-hooks*): add docstring.

fix_slime-all-xref
------------------

Fix slime-all-xrefs.

* slime.el (slime-all-xrefs): slime-next-line/not-add-newlines
doesn't error at end of buffer anymore, call forward-line directly
instead.

* slime.el (slime-next-line/not-add-newlines): Delete unused function.

master
------

* contrib/swank-c-p-c.lisp (completions): Bind *PACKAGE* so local
package nicknames/aliases can be used to find symbols.

Add hooks for extending arglist lookup.

* contrib/swank-arglists.lisp (*valid-operator-symbol-p-hooks*):
New variable.
(valid-operator-symbol-p): use it

* swank-backend.lisp (%arglist): rename interface from arglist
(*arglist-hooks*): new variable, default to %arglist
(arglist): new function, call functions in *arglist-hooks*

* swank-abcl.lisp (%arglist): renamed from arglist
* swank-allegro.lisp (%arglist): renamed from arglist
* swank-ccl.lisp (%arglist): renamed from arglist
* swank-clisp.lisp (%arglist): renamed from arglist
* swank-cmucl.lisp (%arglist): renamed from arglist
* swank-corman.lisp (%arglist): renamed from arglist
* swank-ecl.lisp (%arglist): renamed from arglist
* swank-lispworks.lisp (%arglist): renamed from arglist
* swank-sbcl.lisp (%arglist): renamed from arglist
* swank-scl.lisp (%arglist): renamed from arglist.

* swank-backend.lisp (arglist): export symbol
(*arglist-hooks*): add docstring.

Fix slime-all-xrefs.

* slime.el (slime-all-xrefs): slime-next-line/not-add-newlines
doesn't error at end of buffer anymore, call forward-line directly
instead.

* slime.el (slime-next-line/not-add-newlines): Delete unused function.

Fix source locations when recompiling from an xref buffer.

* slime.el (slime-recompile-locations): pass full filenames to
swank:compile-multiple-strings-for-emacs.

pln-completions
---------------

* contrib/swank-c-p-c.lisp (completions): Bind *PACKAGE* so local
package nicknames/aliases can be used to find symbols.

xref-recompile-source-locations
-------------------------------

Fix source locations when recompiling from an xref buffer.

* slime.el (slime-recompile-locations): pass full filenames to
swank:compile-multiple-strings-for-emacs.

atomontage/slime
================

master
------

Contrib/slime-c-p-c.el: completion bugfix

+ Fixes "mapcar: Symbol's function definition is void:
  append-char-syntax" error when trying to complete #\

  This bug was introduced by Joao Tavora in:
  3467ebc9ead3408c21cd1d2ae119ac05e2a7e2d9.

lmj/slime
=========

fix-sldbs
---------

Fix stale sldbs not being removed.

easye/slime
===========

abcl-20150403a
--------------

ABCL: swank/abcl.lisp (frame-locals frame-var-value): Fix off by one
errors in inspecting arguments across stack frames.  Attempt to match
arguments to parameters recorded at compile time.

abcl-fixes
----------

Implement inspection of sldb frame args.

Thanks to Theam Yong Chew.

Prettify frame inspector patch.

TODO:  figure out how to get argument names (should be fairly easy, right)

Adjust MOP symbols to publically exported version.

abcl
----

Implement inspection of sldb frame args.

Thanks to Theam Yong Chew.

inspector-args
--------------

Implement inspection of sldb frame args.

Thanks to Theam Yong Chew.

Adjust MOP symbols to publically exported version.

This fixes errors when inspecting CLOS objects.

master
------

Start to fix the ABCL locals browsing.

Fix inspection of local variables values.

Start using functions in JVM package for matching argument lists.

Abcl:  changelog for abcl local variables commit.

Fix CHANGELOG.

Remove obsolete function slime-face-inheritance-possible-p

Face inheritance has been available since Emacs 21.1, released in 2001.

* slime.el (slime-face-inheritance-possible-p): Remove it.
(slime-inspector-value-face, slime-inspector-action-face)
(define-sldb-faces, slime-highlight-face): Remove call to
slime-face-inheritance-possible-p.

* slime-fontifying-fu.el (slime-reader-conditional-face): Remove
calls to slime-face-inheritance-possible-p.

* slime-repl.el (slime-repl-prompt-face, slime-repl-output-face):
Ditto.

* slime-presentations.el (slime-repl-output-mouseover-face): Ditto.

Add default values for many SLDB faces

Suggested by Attila Lendvai in pull request #107.

Make the inspector work more like web browsers.

Review slime-connection-list commands and bindings.

Revert "Review slime-connection-list commands and bindings"

This reverts commit 47f2dca4b25d2a5b3a4138df2f2ead8c63b04f36.

* slime.el (slime-xref-mode-map): Bind . and , for compatibility.

hargettp/slime
==============

master
------

Close #151: Add CCL to Travis CI

2014-04-13  Phil Hargett  <phil@haphazardhouse.net>

	* .travis.yml: added targets to include CCL 1.9 for Travis builds
	* slime-tests.el (compile-defun,compile-defun-with-reader-characters):
	Split test into two parts, as CCL does not pass 1 existing test
	* contrib/test/slime-test-autodoc.el: Mark several tests as
	failing for CCL 1.9.

AccelerationNet/slime
=====================

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

master
------

Swank-presentation-streams - sb-impl::%print-unreadable-object
now accepts body optionally.

new-accel
---------

Swank-presentation-streams - sb-impl::%print-unreadable-object
now accepts body optionally.

Modified swank presentation streams to allow my common lisp logging
library to emit presentations

 * swank-presentation-streams.lisp
   (*dedicated-presentation-streams*): new dynamic variable: list of
   other streams the presentation-streams system should consider to
   be dedicated output streams.
   (slime-stream-p): make last-answer caching thread-safe.
   (presenting-object-1): result of slime-stream-p should be passed
   along if it is :DEDICATED as well.

 * slime-repl.el (slime-repl-emit): use insert instead of
   insert-before so that overlays aren't effected. update other
   markers to preserve the desired behavior.

csrhodes/slime
==============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

fixup-presentations
-------------------

Closes #139: restore presentation insertion into editing stream

* contrib/swank-presentations.lisp (lookup-and-save-presented-object-or-lose):
new slimefun, to take temporary presentations (e.g. from sldb or
slime-inspector) and turn them into permanent presentations in the
global presentation-id-object tables.

* contrib/slime-presentations.el (slime-copy-presentation-to-repl):
rewrite, including use of lookup-and-save-presented-object-or-lose,
but also restoring insertion of the presentation into the repl editing
stream.

repl-eval-form
--------------

Remove unneeded call to swank:set-repl-variables

* contrib/slime-repl.el (sldb-copy-down-to-repl): don't call
swank:set-repl-variables explicitly; it's called automatically as part
of swank::repl-eval.

Fix #140

* contrib/swank-repl.lisp (listener-eval-form): new slimefun.
(repl-eval-form): guts of listener-eval-form implementation.

* contrib/slime-repl.el (slime-repl-eval-form): interface to
listener-eval-form slimefun.
(slime-io-speed-test): use it.
(slime-inspector-copy-down-to-repl): ditto.
(sldb-copy-down-to-repl): ditto.

lhonda/slime
============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

acelent/slime
=============

acl-source-pos-fixup
--------------------

In Allegro CL's backend, fixup source pathname and position when

possible.

* swank-allegro.lisp (compile-from-temp-file): Use same technique
as ELI to store source pathname and position when compiling from
file buffers.  Don't store buffer mapping for file buffers.
(buffer-or-file, find-fspec-location) Don't use buffer mapping for
file buffers.

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

Pual2088/slime
==============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

scymtym/slime
=============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

Liusicong/slime
===============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

Ferada/slime
============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

minimum-version
---------------

Rewrite contrib macro to use stored information.

This way additional dependencies can be added/removed after a contrib
has been defined initially.

Add flag to indicate the minimum Emacs version.

slime-trace-dialog depends on Emacs 24, so slime-fancy only loads it
starting from there as well.

multiple-inspectors
-------------------

Add indirection to allow for multiple inspectors.

Inspectors are identified by symbol, so from emacs the default is called
DEFAULT and additional ones can be used using the prefix argument to
each interactive function (when applicable).

Is still missing some functions, basics work though.

* slime.el (slime-buffer-name): Additional `postfix` argument.
(slime-inspect, slime-inspector-buffer, slime-inspector-pop,
slime-inspector-next, slime-inspector-quit, slime-inspector-describe,
slime-inspector-eval, slime-inspector-history, slime-inspector-reinspect,
slime-inspector-toggle-verbose): Additional `inspector-name` argument, which is
set by `interactive`.
(slime-open-inspector, slime-inspector-operate-on-point,
slime-inspector-pprint, slime-inspector-show-source, slime-inspector-fetch):
Pass the `inspector-name` to the SWANK side as a symbol.

* swank.lisp (value-spec-ref): `:inspector` ref gets a `name` argument which
refers to the inspector in question.
(reset-inspector, init-inspector, emacs-inspect/istate, istate>elisp,
inspector-nth-part, inspect-nth-part, inspector-range,
inspector-call-nth-action, inspector-pop, inspector-next, inspector-reinspect,
inspector-toggle-verbose, inspector-eval, inspector-history, quit-inspector,
describe-inspectee, pprint-inspector-part, inspect-in-frame,
inspect-current-condition, inspect-frame-var): Additional `name` argument like
above.
(ensure-istate-metadata, print-part-to-string): Refer to the inspector state
indirectly by `*inspector-name*`.
(inspect-object): Inspector instance passed as additional argument.
(inspect-in-emacs): Add `name` argument as string designator for the buffer
name to be used.

* contrib/slime-repl.el (slime-repl-inspect): Additional `inspector-name`
argument to refer to the inspector in question.

* contrib/slime-fancy-inspector.el (slime-inspector-copy-down-to-repl): Pass
the `slime-inspector-name` to the SWANK side as a symbol.
(slime-inspect-definition): Additional `inspector-name` argument, which is set
by `interactive`.

ShogoMiyagi/slime
=================

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

ctlaux/slime
============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

slime-2.4
---------

Added flag *in-emacs-debugger* to signify when the debugger opens a window in emacs.

Achref115/slime
===============

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

ska80/slime
===========

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

sethaldini/slime
================

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

kisp/slime
==========

choose-swank-loading-method
---------------------------

Keep `slime-backend' name, point to new `slime-swank-loader-backend'

* slime.el (slime-backend, slime-swank-loader-backend): The former
is an obsoletion alias to the latter.

segv/slime
==========

master
------

The slime-tramp contrib should not list tramp as a :slime-dependencies.

Convert :slime-dependencies to normal require forms when the dep is a emacs lib.

Added (require 'tramp) in slime-tramp.el.

ChangeLog update.

Use tramp-default-method when creating tramp-file-name (passing in nil does not have the same effect on emacs 24.3)

When inspecting point to see if there are any presentations around it, make sure to deal with narrow'd buffers where point will not be between (point-min) and (point-max)

Elisp's <= is not an n-arg function.

this corrects an embarassing mistake in the previous commit (if i'd
never run the code why did i have the change in my tree?)

alanruttenberg/slime
====================

master
------

Enable goto source location to find definitions in jars.

I could've sworn split-string was in swank/abcl....

luismbo/slime
=============

allegro-improvements
--------------------

First stab at using EXCL::SOURCE-CONTEXT.

Use condition-pathname-and-position for reader errors too.

Only grab source contexts in ACL >= 10.0.

Don't ignore position info for undefined-functions warnings in ACL 10.

Hack: handle funky source-contexts

Some conditions (at least COMPILER-FREE-REFERENCE-WARNING) have a
SOURCE-CONTEXT with a list in the START-CHAR slot...

Experimental: bind various debug variables to T during C-c C-k.

Remove redundant comment (I think)

The lldb module is required for all sorts of swank functionality.

Set EXCL::*PARTIAL-SOURCE-FILE-P* at compile time too

Otherwise compilation warnings get incorrect positions.

Initial stab at a stepper.

Another stab of stepping.

WIP.

WIP2.

allegro-source-locations
------------------------

Improve source location handling for ACL >= 10.0.

autodoc-simplify-quote-nil+test
-------------------------------

Canonicalize 'nil to nil when displaying default optional and
keyword arguments via slime-autodoc. On SBCL this turns
  (error 'simple-condition
         &rest arguments
         &key (format-arguments 'nil) (format-control 'nil))
into
  (error 'simple-condition
         &rest arguments
         &key format-arguments format-control)
which should be more readable.

* swank-arglists.lisp (canonicalize-default-arg): New function for
canonicalizing optional and keyword arguments.
(make-optional-arg, make-keyword-arg): Use it.

Test with 64-bit SBCL and clean up .travis.yml a bit

(We were previously using the 32-bit version because that version
 is older than the 64-bit version which was failing some autodoc
 tests.)

autodoc-simplify-quote-nil
--------------------------

Canonicalize 'nil to nil when displaying default optional and
keyword arguments via slime-autodoc. On SBCL this turns
  (error 'simple-condition
         &rest arguments
         &key (format-arguments 'nil) (format-control 'nil))
into
  (error 'simple-condition
         &rest arguments
         &key format-arguments format-control)
which should be more readable.

* swank-arglists.lisp (canonicalize-default-arg): New function for
canonicalizing optional and keyword arguments.
(make-optional-arg, make-keyword-arg): Use it.

Test with 64-bit SBCL and clean up .travis.yml a bit

(We were previously using the 32-bit version because that version
 is older than the 64-bit version which was failing some autodoc
 tests.)

dont-save-all-buffers
---------------------

Don't try to save every changed buffer when compiling a file

* slime.el (slime--maybe-save-buffer): New function adapted from
slime--save-some-buffers that maybe saves the current buffer
rather than potentially every changed buffer.
(slime-compile-file): Use it.

Simplified based on @ellerh's feedback (TO BE SQUASHED)

fix-slime-swank-port-file
-------------------------

Make sure the SWANK port file is an absolute path

... and free of shell-isms like ~ that not all Lisps know how
to parse. Bug reported by Mirko Vukovic.

* slime.el (slime-swank-port-file): Use expand-file-name.

inspect-floats-harder
---------------------

Fix the indentation of several EMACS-INSPECT methods.

Adapted some code from wu-decimal.

issue-28
--------

First, crude stab.

joddie-macrostep
----------------

Add `slime-macrostep' contrib.

This provides slightly fancier in-place macroexpansion by integrating
with macrostep.el (http://github.com/joddie/macrostep).  This commit is
a squashed version of work originally co-authored with Luís Oliveira
<luismbo@gmail.com>.

* lib/macrostep.el: New file.  This is a bundled version of the library
developed at http://github.com/joddie/macrostep and also available via
MELPA.  The bundled copy will be used as a fallback if it is not
installed separately.

* swank/backend.lisp (collect-macro-forms): New backend helper used by
`slime-macrostep'.

* swank/sbcl.lisp (collect-macro-forms): SBCL-specific implementation
using a code-walker.

* contrib/slime-macrostep.el: New file.
* contrib/swank-macrostep.lisp: New file.
* contrib/test/slime-macrostep-tests.el: New file.

Require slime-macrostep from slime-fancy.

Signal Emacs rather CL error when macroexpansion fails.

Make slime depend on macrostep 0.9.

Add license to contrib/swank-macrostep.lisp.

Don't collect macros that declined expansion.

macrostep
---------

First stab at bundling macrostep.

Bind macrostep-expand to <C-c e>

Update macrostep.

Another update.

Yet another update.

Update.

More bugfixing.

melpa-tweaks
------------

Tweak slime.el comments to be more MELPA-friendly.

more-melpa-tweaks
-----------------

Avoid compiling a stale slime-path into slime.elc

... when upgrading SLIME within an Emacs session, e.g. via MELPA.
(gh issue #125)

pr/107
------

Remove obsolete function slime-face-inheritance-possible-p

Face inheritance has been available since Emacs 21.1, released in 2001.

* slime.el (slime-face-inheritance-possible-p): Remove it.
(slime-inspector-value-face, slime-inspector-action-face)
(define-sldb-faces, slime-highlight-face): Remove call to
slime-face-inheritance-possible-p.

* slime-fontifying-fu.el (slime-reader-conditional-face): Remove
calls to slime-face-inheritance-possible-p.

* slime-repl.el (slime-repl-prompt-face, slime-repl-output-face):
Ditto.

* slime-presentations.el (slime-repl-output-mouseover-face): Ditto.

Add default values for many SLDB faces

Suggested by Attila Lendvai in pull request #107.

Make the inspector work more like web browsers.

Review slime-connection-list commands and bindings.

raise-frame
-----------

Raise Emacs when ED, SLDB or the inspector pop up

* slime.el (slime-ed, sldb-setup, slime-open-inspector): raise
frame.

remove-changelog
----------------

Remove the slime-motd contrib

It hasn't worked out-of-the-box for a long time and it assumes the motd
file is a ChangeLog file which will be less useful when we remove
SLIME's ChangeLog files.

The idea was interesting, though; pull requests to revive this contrib
to grab content from sources like the NEWS file or the slime-tips blog
are welcome.

Add slime-version variable

Grabbing the version from slime.el's header. In the future might
consider invoking git or package.el to get more accurate information.

Derive SWANK protocol version from slime-version

The main goal here is to remove the dependency on the ChangeLog
file. This should work well enough if releases are frequent.

Use slime-version in slime-{banner,repl}

Build contributors.texi using Git

In preparation for removing the ChangeLog file, start grabbing authors
from "git log". We still collect the contributors from the old, dark,
pre-dvcs days by grabbing and old ChangeLog snapshot via "git show".

Tweaked the last sed step to discard empty lines. I'm not sure what the
original intent was, but it now removes uncapitalized names, which in
effect removes nicknames from the list.

Added Makefile dependency of slime.el to ensure contributors.texi is
rebuilt at least once per release.

Remove ChangeLog files

The rationale for this is twofold:

  1. ChangeLog files introduce merge conflicts all too often. While
     Gnulib's ChangeLog merge driver attempts to solve that problem,
     installing and setting it up is troublesome.

  2. While it is certaintly possible to write great ChangeLog
     entries (Emacs's ChangeLog is a notable example), the ChangeLog
     format promotes describing /what/ changed rather than /why/.

Fixup! Add slime-version variable.

remove-slime-net-coding-system
------------------------------

Remove slime-net-coding-system.

tweak-slime-asdf
----------------

Slime-asdf: no longer depend on cl.

Minor whitespace fix.

wip-use-allegro-cg-bindings
---------------------------

Use default-cg-bindings in Allegro by default.

yet-another-slime-path-strategy
-------------------------------

Don't mess with slime-path at compile time

* slime.el (slime-path): Only set slime-path at load-time. Setting
at compile time is potentially premature if compilation is not
immediately followed by loading. (See gh issue #125 for more
discussion.)
(slime--changelog-file-name): New function. Computes
the location of the SLIME ChangeLog based on
byte-compile-current-file at compile time, or based on slime-path
at load time when slime.el is not compiled.
(slime-changelog-date): Use slime--changelog-file-name. No longer
looks at slime-path at compile time.

Squash me: not sure why this is needed

Why isn't byte-compile-current-file always bound?

attila-lendvai/slime
====================

defaults
--------

Review slime-connection-list commands and bindings.

For the relevant discussion see:
https://github.com/slime/slime/pull/107.

hu.dwim
-------

Fix: inspector uses the same thread and package that was used to invoke it (e.g. for svuc customizations depending on a transaction).

Revert parts of "* swank-loader.lisp: ASDF free again. And proud of it!"

Revert "* swank-backend.lisp (label-value-line): Remove display-nil-value."

This reverts commit fc4e2e19612e7e63237554b59d30bf3903d05184.

Smarter sldb fame details when there's nothing to display.

Line up frame locals in the same column in SLDB.

Smarter slime-read-from-minibuffer: supports history and keymap.

Pad restart descriptions to start at the same column in SLDB.

Order restarts in SLDB so that restarts earlier on the binding stack have smaller (therefore more stable) numbered key bindings assigned to them.

Display the current package at various minibuffer prompts.

Lower the score of fuzzy matches towards the end except for exact matches at the very end.

Always jump to the prompt when navigating the repl history.

SLDB is smarter in pruning swank frames.

Make slime-editing-map key bindings available when Slime is reading from the minibuffer.

Support an &key length-limit in to-string.

Smarter repl history navigation.

- M-r/M-s (or what slime-repl-previous/next-matching-input is bound to) can be used similar to C-s: when pressed multiple times then jumps to the next match with the same regexp

- minibuffer reading of regexp search has its own history, and defaults to the previous input

- pressing M-r while reading the regexp in the minibuffer initiates searching with the previous regexp (like isearch)

- only the sending of the repl input resets the index of navigation history

- drop the feature that the typed-in text at the repl is used as initial history search regexp (the new input method is much more flexible)

- while navigating, display in the minibuffer which repl history index we are at, and what regexp is used for filtering currently

- when reaching the most recent end of the history, then clear the repl input.

Slime-selector can receive the input key as an argument for using from custom key bindings.

Slime-inspect got a :mode argument that controls its behavior.

Most notably with :mode :dwim (default) it'll try to find out the user's
intention (e.g. look up definitions when a symbol is inspected). To avoid
annoyance at misses, it puts the original object on the inspector stack,
so that 'l' brings back to the non-dwim value.

Also add an *inspector-lookup-hooks* customization point.

Collect the result of slot-value-for-inspector using :appending for more flexibility.

Widen a bit the sb-sprof output to make it more readable.

Emacs-inspect now renders a smarter title.

The type of the inspected object became a presentation.

- optionally understand a plist if emacs-inspect returns one
- accept a :type and :type-id in the plist to render an inspectable type
- for CLOS objects display their class instead of a plain type-of.

Fancy inspector: simplify docstring-ispec API.

Fancy inspector: smarter cons

added set-value-inspector-action helper macro

added actions to set cons cell slots.

Fancy inspector: smarter symbol.

Fancy inspector: smarter function.

Fancy inspector: added restarts to be able to skip SVUC errors slot-by-slot.

Fancy inspector: smarter standard-slot-definition.

Fancy inspector: smarter number inspectors.

Fuzzy completion will set itself as default slime completion when loaded.

Extend the asdf contrib with an asdf system definition search function that finds swank, so that (asdf:load-op :swank) or dependence on it works as expected.

Added a restart to be able to skip loading swank modules.

Rationale: it helps when connecting to a server that has an older swank
than the connecting slime, or for some other reason the swank module is
not available.

Uses cl:continue, which can be controversial. Maybe it should use
something like swank::skip-require?

SBCL: use weak hashtables for thread accounting.

Semantic noop.

Use 'continuation-id' name for more clarity around emacs-rex.

Update to swank-asdf.

hu.dwim.2014-01-06-last-before-github
-------------------------------------

Revert parts of "* swank-loader.lisp: ASDF free again. And proud of it!"

Revert "* swank-backend.lisp (label-value-line): Remove display-nil-value."

This reverts commit fc4e2e19612e7e63237554b59d30bf3903d05184.

Smarter sldb fame details when there's nothing to display.

Fix: source-path-parser honours the readtables specified in swank:*readtable-alist*

Added default values for the sldb faces.

Make the key bindings for slime-quit-connection-at-point and slime-restart-connection-at-point safer. Map disconnect to 'k'.

Line up frame locals in the same column in sldb.

Fix: presentations are properly recognized at the very beginning of a buffer.

Try not to (goto-char (point-max)) when copying presentations to the repl for more flexible editing.

Doesn't work when copying from sldb, because slime-repl-send-string does the same.

Fix: slime-repl-delete-from-input-history saved back the old history entries before the in-memory ones.

Fix: inspector uses the same thread and package that was used to invoke it (e.g. for svuc customizations depending on a transaction).

Smarter slime-read-from-minibuffer: supports history and keymap.

Pad restart descriptions to start at the same column in sldb.

Order restarts in sldb so that restarts earlier on the binding stack have smaller (therefore more stable) numbered key bindings assigned to them.

Display the current package at various minibuffer prompts.

Fix: don't just define, actually use slime-inspector-insert-ispec-function.

Lower the score of fuzzy matches towards the end except for exact matches at the very end.

Always jump to the prompt when navigating the repl history.

SLDB is smarter in pruning swank frames.

Make slime-editing-map key bindings available when Slime is reading from the minibuffer.

Support an &key length-limit in to-string.

Smarter repl history navigation.

- M-r/M-s (or what slime-repl-previous/next-matching-input is bound to) can be used similar to C-s: when pressed multiple times then jumps to the next match with the same regexp

- minibuffer reading of regexp search has its own history, and defaults to the previous input

- pressing M-r while reading the regexp in the minibuffer initiates searching with the previous regexp (like isearch)

- only the sending of the repl input resets the index of navigation history

- drop the feature that the typed-in text at the repl is used as initial history search regexp (the new input method is much more flexible)

- while navigating, display in the minibuffer which repl history index we are at, and what regexp is used for filtering currently

- when reaching the most recent end of the history, then clear the repl input.

Slime-selector can receive the input key as an argument for using from custom key bindings.

Slime-inspect got a :mode argument that controls its behavior.

Most notably with :mode :dwim (default) it'll try to find out the user's
intention (e.g. look up definitions when a symbol is inspected). To avoid
annoyance at misses, it puts the original object on the inspector stack,
so that 'l' brings back to the non-dwim value.

Also add an *inspector-lookup-hooks* customization point.

Make the inspector work more like web browsers: bind left click to follow link, and mouse 6/7 for forward and back navigation.

Bind M-RET also in SLDB to copy presentations to the REPL.

Collect the result of slot-value-for-inspector using :appending for more flexibility.

Widen a bit the sb-sprof output to make it more readable.

Extend the title emacs-inspect renders with the type of the inspected object. - understand a plist if emacs-inspect returns one - accept a :type and :type-id in the plist to render an inspectable type - for CLOS objects display their class instead of a plain type-of.

Fancy inspector: simplify docstring-ispec API.

Fancy inspector: smarter cons

added set-value-inspector-action helper macro

added actions to set cons cell slots.

Fancy inspector: smarter symbol.

Fancy inspector: smarter function.

Fancy inspector: added restarts to be able to skip SVUC errors slot-by-slot.

Fancy inspector: smarter standard-slot-definition.

Fancy inspector: smarter number inspectors.

Fuzzy completion will set itself as default slime completion when loaded.

More sensible defaults:

 - slime-setup loads slime-fancy if called without arguments
 - use utf-8 encoding by default.

Extend the asdf contrib with an asdf system definition search function that finds swank, so that (asdf:load-op :swank) or dependence on it works as expected.

pprint-dispatch-hardening
-------------------------

Wrap DISPATCH-EVENT and INVOKE-SLIME-DEBUGGER with WITH-STANDARD-IO-SYNTAX.

Without this evaluating the following expression completely breaks slime
on sbcl: (set-pprint-dispatch 'foo 'bar)

proposed
--------

Display the current package at various minibuffer prompts.

Lower the score of fuzzy matches towards the end except for exact matches at the very end.

Added a restart to be able to skip loading swank modules.

Rationale: it helps when connecting to a server that has an older swank
than the connecting slime, or for some other reason the swank module is
not available.

Uses cl:continue, which can be controversial. Maybe it should use
something like swank::skip-require?

SBCL: use weak hashtables for thread accounting.

Semantic noop.

Use 'continuation-id' name for more clarity around emacs-rex.

Fuzzy completion sets itself as default completion when loaded.

Also undoes this change when it's unloaded.

repl-history
------------

Smarter slime-read-from-minibuffer: supports history and keymap.

Smarter repl history navigation.

- M-r/M-s (or what slime-repl-previous/next-matching-input is bound to) can be used similar to C-s: when pressed multiple times then jumps to the next match with the same regexp

- minibuffer reading of regexp search has its own history, and defaults to the previous input

- pressing M-r while reading the regexp in the minibuffer initiates searching with the previous regexp (like isearch)

- only the sending of the repl input resets the index of navigation history

- drop the feature that the typed-in text at the repl is used as initial history search regexp (the new input method is much more flexible)

- while navigating, display in the minibuffer which repl history index we are at, and what regexp is used for filtering currently

- when reaching the most recent end of the history, then clear the repl input.

sldb
----

Smarter sldb fame details when there's nothing to display.

Line up frame locals in the same column in SLDB.

Pad restart descriptions to start at the same column in SLDB.

upstream
--------

Fix: inspector uses the same thread and package that was used to invoke it (e.g. for svuc customizations depending on a transaction).

weak-sbcl-hashtables
--------------------

SBCL: use weak hashtables for thread accounting.

bbatsov/slime
=============

patch-1
-------

Highlight code snippet as Emacs Lisp

The title says it all :-)

patch-2
-------

Correct command highlighting in the README.

fare/slime
==========

asdf
----

Remove support for ASDF older than 2.019 (the oldest still in the wild, from LispWorks).
This simplifies the code and removes a few warnings.
Also, asdf3 does satisfy version "2" in the end (except the short lived 3.0.0).

Implement alternative method for loading swank via ASDF,
based on work by João Tavora.

* swank.asd: have regular ASDF systems, no loader depend on swank-loader.

* swank-loader-using-asdf.lisp: future replacement for swank-loader,
  that leverages ASDF to do most of the work.

* swank-loader: moved slime-version-string to swank.lisp;
  moved require-module from swank.lisp.

* slime.el: tweak the swank-loader invocation.

* swank.lisp:
  (require-module): new function for plugging into SWANK:*REQUIRE-MODULE*
  (*require-module*): new user-customizable var. Default value guessed
  depending on swank-loader with or without ASDF.
  (load-swank): set loader's load-path in loader.
  (swank-require): Remove optional arg. Simplify to call
  *REQUIRE-MODULE*.
  (*find-module*): Deleted variable.
  (module-filename): Deleted.
  (merged-directory): Deleted.
  (module-canditates): Moved to swank-loader.lisp.
  (*load-path*): Moved to swank-loader.lisp
  (slime-version-string): moved it here from swank-loader.lisp.
  (before-init): removed arguments. Don't redo if :SWANK in *FEATURES*
  (init): Call BEFORE-INIT.
  (start-server): call INIT unless :SWANK in *FEATURES*

* swank-init.lisp: new file with bits formerly from swank-loader.lisp
  that need a new home when shared with swank-loader-using-asdf.lisp.

* swank-sbcl.lisp: remove a warning.

* swank-asdf.lisp: in the end, ASDF3 version-satisfies 2.014.6.

* sbcl-pprint-patch.lisp: move the condition control for this file
  inside the file itself, rather than from all over the place.
  The file is thus valid as a standalone patch, all the while being
  ready to copy-paste into the SBCL sources.

master
------

Update to swank-asdf.

Drop support for ASDF < 2.26.

Make swank-asdf more future-proof by not assuming old compat functions
will always exist forever more.

Reckon that the canonical name for uiop/lisp-build:compile-file-error is
not asdf/... to make it more future-proof.

nbtrap/slime
============

fix-slime-edit-definition
-------------------------

Fix slime-edit-definition when called interactively without point being on a symbol.

When point is not on any symbol, user should be prompted for the
symbol name.

remove-crlf-line-endings
------------------------

Use LF line endings in mkdist.sh.

joaotavora/slime
================

autoloads
---------

Ongoing: Use generated  autoload file.

code-organization-cleanup
-------------------------

Organize code into new dirs 'lib', 'backend', 'test' and 'contrib/test'

issue-116
---------

Closes #116: Deal with file-names with spaces for inferior-lisp-program

* slime.el (slime-read-interactive-args): Use
`split-string-and-unquote' (closes #116). Spotted by Mirko Vukovic.

master
------

Fix tests for `slime-parse'

* contrib/test/slime-parse-tests.el (form-up-to-point.1): Remove spurious
"e" characters that were apparently the cause of the test failures.

ongoing
-------

Makefile frenzy: imcomplete.

Incomplete: big cleanup.

Add .gitignore.

Imcomplete: improve makefile.

Imcomplete: simplify .travis.

remove-xemacs-support
---------------------

Removed XEmacs portability layer.

slime-trace-dialog-presentations
--------------------------------

Implementation idea.

stable-copy-to-repl-interface
-----------------------------

Closes #140: More stable interface for copying things to REPL

* contrib/slime-presentations.el (slime-copy-presentation-to-repl): Use
`slime-repl-copy-part'.

* contrib/slime-repl.el (slime-repl-copy-part)
(slime-inspector-copy-down-to-repl): Use `slime-repl-copy-part'.

* contrib/slime-repl.el (slime-repl-copy-part): New function.

* contrib/swank-repl.lisp (listener-eval-for-part): New slimefun.

Closes #139, closes #141: Copy presentations to REPL's point

* slime-presentations.el (slime-presentations-copy-to-point): New variable.
(slime-presentations--copy-to-point): New internal function.
(slime-copy-presentation-to-repl): Call `slime-presentations--copy-to-point'.

text-buttons
------------

Remove XEmacs portability layer and fix some FIXMEs

* slime.el (require): Don't require features active by default on
GNU emacs.
(slime-underline-color): Removed
(slime-error-face, slime-warning-face, slime-note-face): Don't use
`slime-underline-color'
(slime-map-alist): Removed it
(slime-indulge-pretty-colors): Removed it. Font locking done all
in one place.
(slime-rex, slime-start, sldb-in-face): Fix indentation.
(slime-recompute-modelines, slime-xemacs-recompute-modelines)
(slime-run-when-idle, minor-mode-alist)
(slime-minibuffer-respecting-message)
(slime-push-definition-stack, slime-pop-find-definition-stack):
(slime-recompile-bytecode, slime-safe-encoding-p)
(slime-connection-port, slime-xref-mode-map)
(define-slime-contrib): Remove XEmacs hacks.
(slime-define-channel-type, slime-define-channel-method)
(when-let, slime-define-keys, with-struct)
(slime-propertize-region, slime-with-rigid-indentation)
(slime-with-connection-buffer, slime-def-connection-var)
(slime-rex, slime-eval-async, slime-point-moves-p): Use`declare'
form for indentation.
(slime-connection): Use `slime-auto-start'.
(slime-auto-connect): Renamed to `slime-auto-start'. Provide
obsolete alias.
(slime-dispatch-event): Don't use `slime-recompute-modelines'
(slime-kill-all-buffers): Moved to contrib/slime-repl.el
(slime-compile-file-options): Make `defcustom'
(slime-file-name-merge-source-root)
(slime-highlight-differences-in-dirname): Don't use
`slime-split-string'
(slime-complete-delay-restoration,slime-setup-command-hooks): Use
`add-hook'
(slime-complete-restore-window-configuration)
(slime-xref-recompilation-cont): Add FIXME note.  note.
(slime-xref-mode-map): Don't use interactive lambdas in keymap.
(slime-xrefs): Rewrite to not use `slime-map-alist'
(sldb-debugged-continuations): Simplify.

Redesign and simplify some window-managing code in slime.el

* slime.el (slime-popup-restore-data): Delete it.
(slime-with-popup-buffer): Remove `mode' arg. Redesign.
(slime-make-popup-buffer,slime-init-popup-buffer)
(slime-display-popup-buffer, slime-close-popup-window)
(slime-save-local-variables): Remove these functions.
(slime-popup-buffer-mode-map): Define this existing map
separately.
(slime-popup-buffer-mode): Don't use :keymap arg.
(minor-mode-alist): Remove XEmacs hack
(slime-popup-buffer-quit-function): Remove it
(slime-popup-buffer-quit): Use `quit-window'
(slime-show-compilation-log, slime-edit-value-callback)
(slime-show-apropos, slime-with-xref-buffer)
(slime-create-macroexpansion-buffer, slime-list-threads)
(slime-list-connections, slime-inspector-buffer): Don't pass :mode
arg to `slime-with-popup-buffer'.
(slime-goto-note-in-compilation-log): Redesign and use `recenter'
instead of `slime-show-buffer-position'.
(slime-goto-next-xref): Don't use `slime-show-buffer-position'
(sldb-setup): Use just `pop-to-buffer'
(slime-show-buffer-position): Remove it.
(sldb-recenter-region): Remove it.
(slime-show-source-location): Use `select-window' and `recenter'.
(slime-saved-window-config): Removed.
(slime-inspector-quit): Don't use `slime-saved-window-config'
(slime-inspector-mode): Enters `slime-popup-buffer-mode' minor
mode.
(slime-inspector-mode-map): Bind `q' to `slime-inspector-quit'.

Wip: a slime-button idea, probably broken.

work-for-2.5
------------

Closes #105: Port indentation tests to use ERT

* contrib/test/slime-cl-indent-test.txt: Moved to from previous file and
changed test names from numbers to symbols.

* contrib/test/slime-indentation-tests.el: New file. Defines ERT
indentation tests from specs in `slime-cl-indent-test.txt'.

* contrib/slime-cl-indent.el: Moved tests to
test/slime-indentation-tests.el. In file comments, explain the
legacy cl-indent.el situation. Provide `slime-cl-indent'.

* contrib/slime-indentation.el (slime-cl-indet): `require' instead of
`load'.

Unhide presentation tests from batch test runs.

* contrib/test/slime-presentations-tests.el: Renamed from incorrectly
named test/slime-presentation-tests.el. Won't otherwise be run
from Travis CI.

Simplify contrib declaration in slime-fancy.el

* slime-fancy.el (slime-fancy): No need to explicitly call
dependencies' init function after 53dd098.

rpgoldman/slime
===============

abcl-mop-fix
------------

Proposed fix for issue 177: use of legacy (?) SLOT-DEFINITION accessors.

Fix to the ABCL-specific code for inspecting SLOT-DEFINITION objects.
Latest ABCL seems to export all the required SLOT-DEFINITION accessors
from the MOP package.

eli-history-option
------------------

Add eli like history option.

Added the customize variable 'slime-repl-eli-history-behavior' to
the slime-repl customize group.  This defaults to nil which does
not change the behavior of the history.  When set to t this enables
an eli like history function where the history is inserted at point
in the REPL instead of replacing all current input.

New commands to cycle through history WITHOUT matching.

slime-repl-previous-input-nomatch and slime-repl-next-input-nomatch.

Also, when matching, turn off the eli-style mode.

SBCL's reader changed recently. Fix some issues caused by that.

* swank-source-path-parser.lisp (make-source-recording-readtable):
Wrap the sharp-dot "#." reader before wrapping the dispatch macro
"#" because with the new reader get-dispatch-macro-character
doesn't work if "#" is wrapped first.  Suggested by Paulo Madeira.
(skip-whitespace): New helper.
(read-source-form): Use it.  Skipping over whitespace is a slight
improvement and seems fairly conservative.
* slime-tests.el ([test] find-definition.2-2): New test.

Add eli like history option.

Added the customize variable 'slime-repl-eli-history-behavior' to
the slime-repl customize group.  This defaults to nil which does
not change the behavior of the history.  When set to t this enables
an eli like history function where the history is inserted at point
in the REPL instead of replacing all current input.

New commands to cycle through history WITHOUT matching.

slime-repl-previous-input-nomatch and slime-repl-next-input-nomatch.

Also, when matching, turn off the eli-style mode.

master
------

Add eli like history option.

Added the customize variable 'slime-repl-eli-history-behavior' to
the slime-repl customize group.  This defaults to nil which does
not change the behavior of the history.  When set to t this enables
an eli like history function where the history is inserted at point
in the REPL instead of replacing all current input.

New commands to cycle through history WITHOUT matching.

slime-repl-previous-input-nomatch and slime-repl-next-input-nomatch.

Also, when matching, turn off the eli-style mode.

SBCL's reader changed recently. Fix some issues caused by that.

* swank-source-path-parser.lisp (make-source-recording-readtable):
Wrap the sharp-dot "#." reader before wrapping the dispatch macro
"#" because with the new reader get-dispatch-macro-character
doesn't work if "#" is wrapped first.  Suggested by Paulo Madeira.
(skip-whitespace): New helper.
(read-source-form): Use it.  Skipping over whitespace is a slight
improvement and seems fairly conservative.
* slime-tests.el ([test] find-definition.2-2): New test.

Add eli like history option.

Added the customize variable 'slime-repl-eli-history-behavior' to
the slime-repl customize group.  This defaults to nil which does
not change the behavior of the history.  When set to t this enables
an eli like history function where the history is inserted at point
in the REPL instead of replacing all current input.

New commands to cycle through history WITHOUT matching.

slime-repl-previous-input-nomatch and slime-repl-next-input-nomatch.

Also, when matching, turn off the eli-style mode.

texinfo-colon-tweak
-------------------

Fixed anchor and cross-reference.

Makeinfo doesn't like colons in reference targets.

auvi/slime
==========

master
------

Added a blank contributors.texi file to generate slime.pdf from slime.texi.

gdobbins/slime
==============

master
------

Fix bug in swank/backend:compiler-macroexpand-1

This fixes issue #339.

kidd/slime
==========

inspect-last-expression
-----------------------

Add `slime-inspect-last-expression'.

erjoalgo/slime
==============

master
------

* slime.el slime-words-of-encouragement: added words of hackerish
encouragment for "sister" lisp hackers.

wsgac/slime
===========

lisp-image-tagging
------------------

Add mechanism for tagging Lisp connections.

- Allow tagging Lisp connections from the *slime-connections* buffer
- Allow setting a tag on Slime startup
- Display tags in Lisp file and REPL buffer modelines.

Add mechanism for tagging Lisp connections.

- Allow tagging Lisp connections from the *slime-connections* buffer
- Allow setting a tag on Slime startup
- Display tags in Lisp file and REPL buffer modelines.

Add mechanism for tagging Lisp connections.

- Allow tagging Lisp connections from the *slime-connections* buffer
- Allow setting a tag on Slime startup
- Display tags in Lisp file and REPL buffer modelines.

master
------

Add mechanism for tagging Lisp connections.

- Allow tagging Lisp connections from the *slime-connections* buffer
- Allow setting a tag on Slime startup
- Display tags in Lisp file and REPL buffer modelines.

wraparound-fuzzy-completion
---------------------------

Add mechanism for tagging Lisp connections.

- Allow tagging Lisp connections from the *slime-connections* buffer
- Allow setting a tag on Slime startup
- Display tags in Lisp file and REPL buffer modelines.

Make fuzzy completion up/down navigation wrap around the edges.

svetlyak40wt/slime
==================

patch-1
-------

Add information about a fix of Error: The variable SWANK/SBCL::*SWANK-DEBUGGER-CONDITION* is unbound.

swflint/slime
=============

master
------

Provide for a local version of the info dir file.

bigos/slime
===========

patch-1
-------

Colour change

It's easier to read on dark backgrounds.

venantius/slime
===============

master
------

* mit-scheme: use correct function for file load

The previous commit (c7726e03) failed to change `pathname-new-type` to
`pathname-name` when it removed the `com` extension. The function change
is necessary since we're not actually changing the filetype.

DalekBaldwin/slime
==================

compiler-macro-expand-funcalls
------------------------------

Handle FUNCALL forms in SWANK/BACKEND:COMPILER-MACROEXPAND-1

Technically the CL spec says only forms that look like
`(funcall (function name) ...)` will be expanded, but at least SBCL will also
expand calls of the form `(funcall (quote name) ...)`

Factor out determination of function name in compiler macro forms.

froggey/slime
=============

mezzano-port
------------

Initial Mezzano support.

Source locations for functions.

LIST-CALLERS/-CALLEES.

Bug fix, lambda lists for generic functions, frame source locations.

MOP stubs for Mezzano.

Resignal compiler conditions when compiling strings or files.

More stuff.

Catch when a network stream is closed.

Implement multithreading and switch the default communication style to spawn.

Include methods when searching for callers.

Poll in ACCEPT-CONNECTION to stop the console from going dead.

Swank locks need to be recursive locks.

Don't include stale frames when building the backtrace.

Mezzano MOP support has been improved.

A fake LOGICAL-PATHNAME class isn't needed any more.

Mezzano: Better location tracking for swank-compile-string.

Use enough-namestring to avoid producing a namestring with a host.

Inspect various objects.

s-kostyaev/slime
================

master
------

Interactive eval in parent repl environment.

xiongtx/slime
=============

hyperspec-glossary
------------------

Fix #288 by implementing glossary term lookup.

DemiMarie/slime
===============

unix-sockets
------------

Add support for UNIX domain sockets

This adds support for UNIX domain sockets and makes them the only
option on platforms and Common Lisps that support them.

There are still bugs:

- The temporary files are not deleted when SLIME exits.  Note that
  these will be deleted in the event of a PID clash.
- TCP sockets are still completely insecure.

SLIME is secure on Unix with most Lisps

Add note to `PROBLEMS` that SLIME is secure on Unix with most Lisps now.

Fixed test suite failures and /tmp race conditions

This fixes the test suite and security vulnerabilities
due to temporary file race conditions.

Fix temp file handling in Lisps other than SBCL.

Forgot what this was about.

Fix typos.

Fix some tests.

Fix typo in swank/ccl.lisp

swank/ccl.lisp had a bug in it: I used swank:make-temp-file instead of
swank:make-temp-filename.

Trying to discover what broke the CCL build.

Trying more to debug the build failure on CCL.

Try to fix CCL tests.

Another attempt at fixing CCL tests.

Changes to makefile

Use environment variables instead of interpolation.
Enable debugging on errors during tests.

Fix a bug on Emacsen that lack lexical binding.

lanejo01/slime
==============

master
------

Fixed Typo

License was spelled Licence in the readme.

BradWBeer/slime
===============

master
------

Added *eval-func* and changed evals to use it.

joddie/slime
============

macrostep-contrib
-----------------

* swank/abcl.lisp (macroexpand-all): Use EXT:MACROEXPAND-ALL.

This function has been available in ABCL since 2009.  See, e.g.,
discussion at

http://armedbear-devel.common-lisp.narkive.com/0TR5ZaAt/macroexpand-all.

Add optional ENV argument to SWANK:MACROEXPAND-ALL

Implementations for ABCL, CCL, CMUCL, and SBCL have been updated to pass
the additional environment argument to the underlying implementation.
Other implementations accept the optional argument but ignore it.

* swank/backend.lisp (macroexpand-all): Add &optional ENV arg to
  lambda-list.

* swank/abcl.lisp (macroexpand-all)
* swank/ccl.lisp (macroexpand-all)
* swank/cmucl.lisp (macroexpand-all)
* swank/sbcl.lisp (macroexpand-all): Update defimplementations to use
  the ENV arg.

* swank/allegro.lisp (macroexpand-all)
* swank/clasp.lisp (macroexpand-all)
* swank/clisp.lisp (macroexpand-all)
* swank/corman.lisp (macroexpand-all)
* swank/ecl.lisp (macroexpand-all)
* swank/lispworks.lisp (macroexpand-all)
* swank/mkcl.lisp (macroexpand-all)
* swank/scl.lisp (macroexpand-all): Update defimplementations to accept
  but ignore the ENV arg.

Add `slime-macrostep' contrib.

Provide slightly fancier in-place macroexpansion by integrating with the
`macrostep.el' library originally written for Emacs Lisp.  This commit
is a squashed version of work co-authored with Luís Oliveira
<luismbo@gmail.com>.

* lib/macrostep.el: New file.  This is a bundled version of the library
developed at http://github.com/joddie/macrostep and also available via
MELPA.  The bundled copy will be used as a fallback if it is not
installed separately.

* contrib/slime-macrostep.el: New file.
* contrib/swank-macrostep.lisp: New file.
* contrib/test/slime-macrostep-tests.el: New file.
* contrib/slime-fancy.el (slime-fancy): Add `slime-macrostep'.

* swank/backend.lisp (collect-macro-forms): New backend helper used by
  `slime-macrostep', with a generic implementation.
  (with-collected-macro-forms): New macro to ease implementing
  `collect-macro-forms' by let-binding *MACROEXPAND-HOOK*
* swank/sbcl.lisp (collect-macro-forms): SBCL implementation using a
  code-walker.
* swank/abcl.lisp (collect-macro-forms): ABCL implementation
  using WITH-COLLECTED-MACRO-FORMS.
* swank/clisp.lisp (collect-macro-forms): CLISP implementation using
  WITH-COLLECTED-MACRO-FORMS.

* swank-loader.lisp (*contribs*): Add `swank-macrostep'.

Refactor WITH-COLLECTED-MACRO-FORMS.

* swank/backend.lisp (call-with-macro-form-collector): New function.
(with-collected-macro-forms): Use it.  Also, optionally bind a
variable to the result of INSTRUMENTED-FORM.
(collect-macro-forms): Replace let+setq with the new
WITH-COLLECTED-MACRO-FORMS syntax.

Update lib/macrostep.el to latest upstream.

macrostep-ecl
-------------

Add `slime-macrostep' contrib.

This provides slightly fancier in-place macroexpansion by integrating
with macrostep.el (http://github.com/joddie/macrostep).  This commit is
a squashed version of work originally co-authored with Luís Oliveira
<luismbo@gmail.com>.

* lib/macrostep.el: New file.  This is a bundled version of the library
developed at http://github.com/joddie/macrostep and also available via
MELPA.  The bundled copy will be used as a fallback if it is not
installed separately.

* swank/backend.lisp (collect-macro-forms): New backend helper used by
`slime-macrostep'.

* swank/sbcl.lisp (collect-macro-forms): SBCL-specific implementation
using a code-walker.

* contrib/slime-macrostep.el: New file.
* contrib/swank-macrostep.lisp: New file.
* contrib/test/slime-macrostep-tests.el: New file.

Require slime-macrostep from slime-fancy.

Signal Emacs rather CL error when macroexpansion fails.

Make slime depend on macrostep 0.9.

Add license to contrib/swank-macrostep.lisp.

Don't collect macros that declined expansion.

Return NIL on unexpanded compiler-macro forms in MACRO-FORM-P.

Don't collect unexpanded compiler-macros in SBCL.

Hack for FUNCTION-quoted lambdas in SBCL.

Simplify compiler-macro detection for SBCL.

Use prefixed cl-destructuring-bind.

Add COLLECT-MACRO-FORMS for CLISP.

Add COLLECT-MACRO-FORMS for ABCL.

Minor refactoring.

Make macro-form-p safe for read errors.

Remove unused variable.

Re-order defuns.

Return tagged values from defslimefun's.

Minor refactoring.

Simplify return value of MACROSTEP-EXPAND-1

By using `indent-rigidly' on the Emacs side we can dispense
with tracking line numbers on the CL side.

Rename some local variables.

Allow basic macrostep functionality under CLISP

Hack: this just returns NIL from
SWANK-MACROSTEP::COLLECT-FORM-POSITIONS, so that basic expansion works,
but no subforms are marked / fontified.

Note expected failures in slime-macrostep-tests.

Formatting.

Fix FORMAT args typo.

Expand in local environment hack.

Remove unnecessary package prefix.

Use ABCL's EXT:MACROEXPAND-ALL.

Local macro-expansion tests.

Update macrostep.el.

Match revised macrostep.el calling convention.

WIP: Add COLLECT-MACRO-FORMS for ECL.

WIP: Add COLLECT-MACRO-FORMS-IN-CONTEXT.

New macro: WITH-COLLECTED-MACRO-FORMS

Use it to reduce code duplication in implementations of
COLLECT-MACRO-FORMS.

Add optional ENV argument to SWANK:MACROEXPAND-ALL.

Use ENV argument to COLLECT-MACRO-FORMS.

Fix COLLECT-MACRO-FORMS-IN-CONTEXT.

Note macrostep test failures/successes.

Test for local macro fontification.

Respect ENV arg to COLLECT-MACRO-FORMS under ABCL.

Simplify ENCLOSE-FORM-IN-CONTEXT.

* swank-loader.lisp (*contribs*): Add swank-macrostep.

Add test for macro-expansion near unreadable objects.

Simplify MACROEXPAND-AND-CATCH.

Simplify ENCLOSE-FORM-IN-CONTEXT.

Re-order functions.

Rename tag parameter.

Replace *FEATURES* with reader conditional.

Note and document test failures.

Hacks to make macrostep work under ECL.

macrostep
---------

Add `slime-macrostep' contrib.

This provides slightly fancier in-place macroexpansion by integrating
with macrostep.el (http://github.com/joddie/macrostep).  This commit is
a squashed version of work originally co-authored with Luís Oliveira
<luismbo@gmail.com>.

* lib/macrostep.el: New file.  This is a bundled version of the library
developed at http://github.com/joddie/macrostep and also available via
MELPA.  The bundled copy will be used as a fallback if it is not
installed separately.

* swank/backend.lisp (collect-macro-forms): New backend helper used by
`slime-macrostep'.

* swank/sbcl.lisp (collect-macro-forms): SBCL-specific implementation
using a code-walker.

* contrib/slime-macrostep.el: New file.
* contrib/swank-macrostep.lisp: New file.
* contrib/test/slime-macrostep-tests.el: New file.

Require slime-macrostep from slime-fancy.

Signal Emacs rather CL error when macroexpansion fails.

Make slime depend on macrostep 0.9.

Add license to contrib/swank-macrostep.lisp.

Don't collect macros that declined expansion.

Return NIL on unexpanded compiler-macro forms in MACRO-FORM-P.

Don't collect unexpanded compiler-macros in SBCL.

Hack for FUNCTION-quoted lambdas in SBCL.

Simplify compiler-macro detection for SBCL.

Use prefixed cl-destructuring-bind.

Add COLLECT-MACRO-FORMS for CLISP.

Add COLLECT-MACRO-FORMS for ABCL.

Minor refactoring.

Make macro-form-p safe for read errors.

Remove unused variable.

Re-order defuns.

Return tagged values from defslimefun's.

Minor refactoring.

Simplify return value of MACROSTEP-EXPAND-1

By using `indent-rigidly' on the Emacs side we can dispense
with tracking line numbers on the CL side.

Rename some local variables.

Allow basic macrostep functionality under CLISP

Hack: this just returns NIL from
SWANK-MACROSTEP::COLLECT-FORM-POSITIONS, so that basic expansion works,
but no subforms are marked / fontified.

Note expected failures in slime-macrostep-tests.

Formatting.

Fix FORMAT args typo.

Expand in local environment hack.

Remove unnecessary package prefix.

Use ABCL's EXT:MACROEXPAND-ALL.

Local macro-expansion tests.

Update macrostep.el.

Match revised macrostep.el calling convention.

WIP: Add COLLECT-MACRO-FORMS for ECL.

WIP: Add COLLECT-MACRO-FORMS-IN-CONTEXT.

New macro: WITH-COLLECTED-MACRO-FORMS

Use it to reduce code duplication in implementations of
COLLECT-MACRO-FORMS.

Add optional ENV argument to SWANK:MACROEXPAND-ALL.

Use ENV argument to COLLECT-MACRO-FORMS.

Fix COLLECT-MACRO-FORMS-IN-CONTEXT.

Note macrostep test failures/successes.

Test for local macro fontification.

Respect ENV arg to COLLECT-MACRO-FORMS under ABCL.

Simplify ENCLOSE-FORM-IN-CONTEXT.

* swank-loader.lisp (*contribs*): Add swank-macrostep.

Add test for macro-expansion near unreadable objects.

Simplify MACROEXPAND-AND-CATCH.

Simplify ENCLOSE-FORM-IN-CONTEXT.

Re-order functions.

Rename tag parameter.

Replace *FEATURES* with reader conditional.

Note and document test failures.

Add menu item to enter macrostep.

Better way of adding menu item.

opt9/slime
==========

master
------

* slime.el (slime-log-event): Use lisp-mode in
*slime-events*. It's convenient.

zellerin/slime
==============

fix-passwords
-------------

Use safer input function for password.

This is simple fix to prevent some attacks against password
protection, in particular passing #. forms as input.

Handle better password read failure.

When password reading fails or password is not matched, close session
and try again.

Until now, behaviour was to throw error and end in debugger. As the
password reading is in not in separate thread, it prevented all future
connection attempts.

Test case: running nmap on system.

Implement set-stream-timeout on sbcl.

This is primarily used when reading password at connect time. For
implementation that do not define that, an attacker can open connection
to the port and by this prevent other from access to the lisp process.

With this in place, attacker still can start sending absurdly large
chunk of data and send a single octet every 20 seconds, but it is at
least some protection. Better way might be handling passwords in the
separate thread, or using with-deadline, but this infrastructure is
already in place.

fix-simple-read
---------------

Fix simple-read so that it actually works.

The symbol reading part had no chance to work:
- the read string was left downcased,
- the colon was not handled in any way.

Use standard string reader in simple-read.

master
------

Do not cache slimeness of t.

Test case:
(list (swank::slime-stream-p t)
      (with-open-file (*standard-output* #P"/tmp/foo"
					 :direction :output :if-exists :supersede)
	(swank::slime-stream-p t)))

should not produce (T T) from repl as it does now.

Fix handling of stream designators

clhs entry for stream designator:

an object that denotes a stream and that is one of: t (denoting the
value of *terminal-io*), nil (denoting the value of *standard-input* for
input stream designators or denoting the value of *standard-output* for
output stream designators), or a stream (denoting itself).

slime-stream-p
--------------

Do not cache slimeness of t.

Test case:
(list (swank::slime-stream-p t)
      (with-open-file (*standard-output* #P"/tmp/foo"
					 :direction :output :if-exists :supersede)
	(swank::slime-stream-p t)))

should not produce (T T) from repl as it does now.

Fix handling of stream designators

clhs entry for stream designator:

an object that denotes a stream and that is one of: t (denoting the
value of *terminal-io*), nil (denoting the value of *standard-input* for
input stream designators or denoting the value of *standard-output* for
output stream designators), or a stream (denoting itself).

with-images
-----------

Faciliate display of images in the repl.

The (:write-string) communication is enhanced in such a way that the
additional parameter already in place (target) can also bear information
that an image should be displayed, if possible. The exact format is
subject to change (soon).

chuchana/slime
==============

master
------

Added `use-package` subsection to "installation"

patch-1
-------

Update README.md.

chrnybo/slime
=============

master
------

Read secrets with swank::read-passwd-in-emacs.

budden/slime
============

master
------

Modified swank.lisp, slime.el, contrib/slime-snapshot.el so that emacs-rex event is replaced
with emacs-rex-rt event. Readtable name is passed in emacs-rex-rt event. When buffer contains
(optional-package::in-readtable :readtable-name), this name will be passed to swank.lisp.

Fixed problem with crlf vs cr (converted all to unix-style)

Removed unnecessary comments and test functions.

ecraven/slime
=============

master
------

* contrib/slime-media.el: Base64-decode literal image data.

If image data is passed as :data, assume it is base64-encoded and decode
it. If there is no :data, don't change anything.

This fixes problems with sending actual binary data over the wire.

jimka2001/slime
===============

better-continue-prompt
----------------------

Include name of history file in "Continue?" prompt.

class-graph
-----------

Added function to create a graphical image (using graphviz) of the
   hierarchy of the class named at the point.

Fixed problem of slime remote evaluation and correct symbols.

Added docstrings to functions.

Updated class-to-dot to return a data structure describing the image.
  uses cl-yacc based dot parser.

Added elisp code to parse the output of class-graph (cl)

Fixed ambiguous grammar.

Updated compatibility to class-graph.el.

values-to-cl-values
-------------------

Replaced call to values with cl-values.  There is no such function as values.

tapioco71/slime
===============

master
------

Update swank-loader.lisp

Added :mips and :mipsel in *architecture-features*.

Update ChangeLog.

sjlevine/slime
==============

stevedebug
----------

Added debugging functions! Prints all slime protocol inputs and outputs.
See the modifications to (encode-message ...) and (decode-message ...).

rick-monster/slime
==================

master
------

Quick hack to fix compile warnings on allegro.

drurowin/slime
==============

application-hints
-----------------

Swank-indentation: different ways of looking up indentation hints

Hash tables can be used for static things.  Functions can be used for
dynamic things.  Symbols can be used for not having to redefine the
hints table when you change something like a function.  Other types of
things can be added.

Slime-cl-indent: query swank when the function is not interned

Skip the caching and try to use swank::*application-hints* hints
directly.

Bad-ptr/slime
=============

fix-lexical-binding-headers
---------------------------

Add missing lexical-binding headers.

Add cl-lib require to slime-package-fu.el.

Add lexical-binding header and cl-lib require to slime-enclosing-context.el.

Add lexical-binding header and cl-lib require to slime-fancy-inspector.el.

Add lexical-binding header and cl-lib require to slime-hyperdoc.el.

Remove cl require from slime-presentations.el.

Add lexical-binding header and cl-lib require to slime-references.el.

Add lexical-binding header and cl-lib require to slime-tramp.el.

Add lexical-binding header and cl-lib require to slime-xref-browser.el.

Remove cl require from slime-cl-indent.el.

orivej/slime
============

downcase-completion
-------------------

* contrib/swank-c-p-c.lisp (completion-output-case-converter):
suggest downcase completions for downcase users by default.

csziacobus/slime
================

master
------

Add documentation for mdot-fu.

ivan4th/slime
=============

master
------

Add *FUZZY-DUPLICATE-SYMBOL-FILTER*.

* swank-fuzzy.lisp: Add *FUZZY-DUPLICATE-SYMBOL-FILTER* variable
that controls the removal of symbol name duplicates occurring
during fuzzy matching.

*FUZZY-DUPLICATE-SYMBOL-FILTER*: made :NEAREST-PACKAGE the default, moved docs to the manual.

adlai/slime
===========

master
------

PoC: bind swank (on ccl) to a unix socket.

markhdavid/slime
================

slime-issue-161
---------------

Accept (function (function +)) as Lisp printer output for (function #'+)

Update contrib/ChangeLog for change to swank-arglists.lisp.

y2q-actionman/slime
===================

add-list-fasls
--------------

* swank-loader.lisp (list-fasls): New function.

