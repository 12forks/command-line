================
skypher/weblocks
================

michaeljayt/weblocks
====================

master
------

Add missing bubblehead.png file to simple-blog.

danlentz/weblocks
=================

master
------

Initial commit of perec store driver.

Addition of symlink to asd.

Initial commit of weblocks-perec-demo.

Addition of symlink to demo asd.

woudshoo/weblocks
=================

small-doc-fix
-------------

Tiny documentation clarification.

tiny-simplification
-------------------

Use format's loop syntax instead of two layers of function calls.

Use existing function instead of explicit setf.

Removed duplicate slot, moved initform of duplicate slot to :default-initargs.

Mysterious changes.

html/weblocks
=============

d-s-r-store
-----------

Adding basic de.setf.resource store features.

Fixed object-id method to return string, added store methods.

Added find-persistent-object-by-id method.

Added close-store method, cleared messy code improved some performance.

Added persist-object method.

Added items filtering.

Added delete-persistent-object method for d-s-r store.

deferred-validation
-------------------

Added deferred validation feature.

master
------

Added extension to randomly generated file name in file-upload parser.

Fixed cyrillic file names bug.

Fixed all tests not passing bug.

Fixed some tests.

Fixed test.

Fixed all tests.

Added deferred validation feature.

montezuma-store
---------------

Added extension to randomly generated file name in file-upload parser.

Fixed cyrillic file names bug.

Fixed all tests not passing bug.

Fixed some tests.

Fixed test.

Fixed all tests.

Added deferred validation feature.

Added basic montezuma store support.

Added non-functional transaction methods to avoid errors.

Fixed results fetching on big databases, fixed range bug.

random-filename-upload-fix
--------------------------

Added extension to randomly generated file name in file-upload parser.

url-ids
-------

Added url-ids basic code.

Added setting of default params of widgets with url-ids.

Fixed bug with render-param-link.

Made some refactoring and code separation.

weblocks-routes
---------------

First steps in cl-routes integration.

Imported more cl-routes related code to Weblocks.

Small url-for fix.

Merged Weblocks 0.10.19.

Improved timing macro, added methods for it.

Syncing with weblocks master branch.

Fixed timing macro related logic.

Fixed widget repeated rendering bug, wrapped one more form with timing macro.

Fixed default value for *process-html-parts-p*

Copied few bug fixes from original weblocks source.

Updated code from latest Weblocks (0.11.2)

Merging js-backend related code.

Fixed some bugs.

Improved timing inspection for widgets.

Improved checkboxes views.

ury-marshak/weblocks
====================

before-merges
-------------

Missing argument in MAKE-LAZY-NAVIGATION.

New 'default app' mechanism in WEBLOCKS-ACCEPTOR.

Support for different subclasses in the same grid.

Critical bug fix: the :SATISFIES function passed to MAKE-QUICKFORM was not
being called until after the object was persisted.

* src/views/types/parsers/common.lisp: make optional float fields not signal when they were missing.

* src/widgets/widget/widget.lisp: fix multiple RENDER-WIDGET from slburson / weblocks

https://github.com/slburson/weblocks/commit/cc290476e165155f0f39386f2fd546fced546390

widgets were being marked dirty during initialization. More...
() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

Fix render-dropdown for correct multiple and size parameters.

Fixed tests for latest asdf (2.26.152)

Applied patch from Francois-Rene Rideau for latest asdf (2.26.152)

Fix symlink.

* src/utils/html.lisp: fix SEND-SCRIPT for cases when the script
  contains ~ characters.

* src/control-flow/dialog.lisp: more of WITH-JAVASCRIPT bugs.

* src/widgets/widget/widget.lisp: do not let (setf (widget-rendered-p w)
  ...) call MARK-DIRTY on it.

* src/views/sequence-view.lisp: re-enable sorting on fields with a reader.

debug-render
------------

Missing argument in MAKE-LAZY-NAVIGATION.

New 'default app' mechanism in WEBLOCKS-ACCEPTOR.

Support for different subclasses in the same grid.

Critical bug fix: the :SATISFIES function passed to MAKE-QUICKFORM was not
being called until after the object was persisted.

* src/views/types/parsers/common.lisp: make optional float fields not signal when they were missing.

* src/widgets/widget/widget.lisp: fix multiple RENDER-WIDGET from slburson / weblocks

https://github.com/slburson/weblocks/commit/cc290476e165155f0f39386f2fd546fced546390

widgets were being marked dirty during initialization. More...
() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

Fix render-dropdown for correct multiple and size parameters.

Fixed tests for latest asdf (2.26.152)

Applied patch from Francois-Rene Rideau for latest asdf (2.26.152)

Fix symlink.

* src/utils/html.lisp: fix SEND-SCRIPT for cases when the script
  contains ~ characters.

* src/control-flow/dialog.lisp: more of WITH-JAVASCRIPT bugs.

Debug code.

* src/widgets/widget/widget.lisp: do not let (setf (widget-rendered-p w)
  ...) call MARK-DIRTY on it.

* src/widgets/widget/widget.lisp: more debug.

* src/request-handler.lisp: more debug.

master
------

Missing argument in MAKE-LAZY-NAVIGATION.

New 'default app' mechanism in WEBLOCKS-ACCEPTOR.

Support for different subclasses in the same grid.

Critical bug fix: the :SATISFIES function passed to MAKE-QUICKFORM was not
being called until after the object was persisted.

* src/views/types/parsers/common.lisp: make optional float fields not signal when they were missing.

* src/widgets/widget/widget.lisp: fix multiple RENDER-WIDGET from slburson / weblocks

https://github.com/slburson/weblocks/commit/cc290476e165155f0f39386f2fd546fced546390

widgets were being marked dirty during initialization. More...
() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

Fix render-dropdown for correct multiple and size parameters.

Fixed tests for latest asdf (2.26.152)

Applied patch from Francois-Rene Rideau for latest asdf (2.26.152)

Fix symlink.

* src/utils/html.lisp: fix SEND-SCRIPT for cases when the script
  contains ~ characters.

* src/control-flow/dialog.lisp: more of WITH-JAVASCRIPT bugs.

* src/widgets/widget/widget.lisp: do not let (setf (widget-rendered-p w)
  ...) call MARK-DIRTY on it.

next
----

Missing argument in MAKE-LAZY-NAVIGATION.

New 'default app' mechanism in WEBLOCKS-ACCEPTOR.

Support for different subclasses in the same grid.

Critical bug fix: the :SATISFIES function passed to MAKE-QUICKFORM was not
being called until after the object was persisted.

* src/views/types/parsers/common.lisp: make optional float fields not signal when they were missing.

* src/widgets/widget/widget.lisp: fix multiple RENDER-WIDGET from slburson / weblocks

https://github.com/slburson/weblocks/commit/cc290476e165155f0f39386f2fd546fced546390

widgets were being marked dirty during initialization. More...
() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

Fix render-dropdown for correct multiple and size parameters.

Fixed tests for latest asdf (2.26.152)

Applied patch from Francois-Rene Rideau for latest asdf (2.26.152)

Fix symlink.

* src/utils/html.lisp: fix SEND-SCRIPT for cases when the script
  contains ~ characters.

* src/control-flow/dialog.lisp: more of WITH-JAVASCRIPT bugs.

* src/widgets/widget/widget.lisp: do not let (setf (widget-rendered-p w)
  ...) call MARK-DIRTY on it.

* src/views/sequence-view.lisp: re-enable sorting on fields with a reader.

no-mark-dirty-while-init
------------------------

Missing argument in MAKE-LAZY-NAVIGATION.

New 'default app' mechanism in WEBLOCKS-ACCEPTOR.

Support for different subclasses in the same grid.

Critical bug fix: the :SATISFIES function passed to MAKE-QUICKFORM was not
being called until after the object was persisted.

* src/views/types/parsers/common.lisp: make optional float fields not signal when they were missing.

* src/widgets/widget/widget.lisp: fix multiple RENDER-WIDGET from slburson / weblocks

https://github.com/slburson/weblocks/commit/cc290476e165155f0f39386f2fd546fced546390

widgets were being marked dirty during initialization. More...
() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

Fix render-dropdown for correct multiple and size parameters.

slburson
--------

Ignore Emacs backups; formatting.

Typo in empty-menu message; formatting.

Export *STORE-NAMES*.

Adds a feature for generating links with a specific path.  RENDER-LINK now
takes a :URI-PATH parameter; if supplied, this forces the use of a non-AJAX
link with that path.

MAKE-ACTION-URL has been INCOMPATIBLY changed to take keyword parameters
rather than an &optional parameter (INCLUDE-QUESTION-MARK-P; why would this
ever be false?), and now also takes the :URI-PATH parameter.

In my opinion, EQUAL is the right predicate to use for something like
an item-id in a dataseq.

This is an INCOMPATIBLE change, as the comparison was formerly case-
insensitive.

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Extended MAKE-WIDGET a little for convenience (now accepts a list of
children, and a :NAME parameter).  Also, quieted some warnings which didn't
seem terribly informative.

New method SELECTOR-TOKENS-UNKNOWN called from UPDATE-CHILDREN when a
selector is given tokens it doesn't understand.  This allows easy
customization of the behavior in this case, on a selector basis.

Make START-WEBLOCKS a little more flexible, by allowing the default store
and hostnames to be supplied at runtime, via :WEBAPP-ARGS.

Doc string and comment improvements.

Added support for CLSQL normalized subclasses.

Small extension to TEXT-PRESENTATION (from which many presentations
inherit): initarg :NULL-STRING lets you specify what to display if
the value is null.

Let MAKE-QUICKFORM take additional keyword arguments, which it forwards to
MAKE-INSTANCE of the quickform class.

Add missing special declaration.

Rearranged forms to work around SBCL bug (a TYPEP call on a type textually
above the type's definition can make a fasl unloadable).

Automatic timezone offset support.

JavaScript stashes the browser's current timezone offset into a cookie,
which Weblocks reads and makes available to the date presentation (as well
as the webapp).

Requires metatilities-base from 2012-2-4 or newer.

Oops, should have created .gitignore rather than updating .hgignore.

Turn Hunchentoot's *CATCH-ERRORS-P* off in debug mode.  This allows
errors to be debugged in the Lisp session, rather than just dumping a
backtrace page to the browser.

SSL support.

Adds classes WEBLOCKS-SSL-ACCEPTOR and SSL-REDIRECT-ACCEPTOR.

Doc string improvement.

Some changes needed to set up database replication.
These include providing a way to pre-create all sequences used to
generate object IDs, rather than creating them lazily; and, a way
to get from the CLSQL names of tables and sequences to their SQL
names.

Oops, fix previous commit.

Gack, one more try.

Feature: navigation hidden panes can be updated dynamically.

If a datagrid's view specifies a caption, display it.

Don't reload the page if you couldn't set the cookie (caused infinite
reload loop).

When redirecting to a local URL, keep us in the same session, even if
cookies are off.

Added disabled-panes option to navigations.  This allows titles and
spacers in navigation menus.

CSS-related tweaks.

Don't add view captions to tables (we show them separately).

Bug fix.

Add "force-hostname" feature, by which an app with multiple hostnames
can redirect to the canonical one.

Force-hostname feature also requires changes to the ssl-redirect-acceptor.

Bug fix: sorting on a CLSQL slot with a :column didn't work.

Given this:

(def-view-class frob ()
  ((wedged? :accessor frob-wedged? :initform nil :type boolean
            :column is_wedged) ...))

(defview frob-table-view (:type table)
  (wedged? :present-as predicate))

Clicking on the "Wedged?" column header to sort on that column would get
an SQL error, because the slot name was not being translated to the
column name 'is_wedged'.

(Ironically, it worked if the slot came from a mixin view, but not in the
simple case.)

Prepend "field-" to a form field name to get the HTML class for the field.

I happened to use "text" as both a field name and an HTML class, and
had a CSS rule for the class.  I think it's better design to have a prefix
to (nearly) prevent these collisions.

Support for disabled form fields.  Somewhat experimental but seems to work.

Bug fix: WITH-TRANSACTION returned T on success rather than the values
of the last form in the body.

Incompatible change: view validators now receive the object and an alist
of the new field values to be stored in it.

(I needed the object to do the validation, and I thought that interning
keywords on every validator call was not the Right Thing.  Since I was
changing the interface anyway, to pass the object, I decided to use an
alist for the field values.)

Fix two minor bugs in LAZY-NAVIGATION.

Bug fix: widgets were being marked dirty during initialization.  More...

() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

() I undid some changes I had previously made to quiet warnings issued
when strings and functions were used as widgets.  It eventually became
clear this was not a good idea; only widgets should be in the widget tree.
I added a couple of calls to MAKE-WIDGET to better enforce this, and
restored the warnings.  (I also made it an error to pass a string in the
list of children passed to MAKE-WIDGET; an error that's easy to make is
to forget to wrap a call to something like WITH-HTML or RENDER-LINK in a
lambda, and this detects that.)

() I added a :DOM-CLASS argument to MAKE-WIDGET.

() Finally, I added a convenience macro MAKE-FLOW-WIDGET that makes it
easier to use flows.

Whoops -- incorrectly removed debugging code in previous commit.

Also, that commit should have had this in its message:

Oh, one more thing.  Functions passed to MAKE-WIDGET are now invoked with
the resulting widget as their first argument.  This is an incompatible
change, but it's convenient when you want to call ANSWER in the function
body.

Oops -- MAKE-FLOW-WIDGET shouldn't assign a DOM ID.

Bug fix: the progress indicator image often didn't work, because it was
being loaded using a relative path.

Bug fix: (setf widget-children) was discarding children in one case.
Specifically, when an empty list of children was supplied, and the type
alist didn't already have an entry for the type given, all children
were discarded.

Support for non-AJAX drilldowns in datagrids.  With these, the browser's
"back" button returns from the drilldown widget to the datagrid, as the
user might expect.

Example: you can have a datagrid of frobs selected by a 'navigation' at
'http://foo.com/frobs/'; the :drilldown-link-url-fn can return URLs like
'http://foo.com/frobs/42'.  To do this, wrap the datagrid in a custom
subclass of 'on-demand-selector', with a :lookup-function that, if given
an empty list of tokens, returns the datagrid itself, otherwise returns
the drilldown widget named by the first token.

Adding bountyoss.text (repo ownership verification).

Another BountyOSS nonce (negative test).

Changing negative test to positive.

One more BountyOSS nonce.  Ignore all this.

Fix and export ACTIVE-SESSIONS.

Fix XSS: 'render-textarea' wasn't escaping initial contents.

Bug fix: ':required-indicator nil' was ignored for radio buttons and
checkboxes.

Bug fix: crash when form validation failed on a form containing a radio
button or checkbox presentation.

Navigations: when the first menu item is selected by default, display it
as selected.

Make :hidep work on mixin view fields.

Critical security fix to ':parse-as float' in view fields.

Cache the public files path after computing it (premature optimization).

Revert "Make START-WEBLOCKS a little more flexible, by allowing the default store"

This reverts commit d9afd2e3487f8500b1f669fe2bdbbdff61f3b399.

The right way to do what I was trying to do was to say :AUTOSTART NIL in
the DEFWEBAPP, and then call START-WEBAPP myself with the additional
arguments.  (If there were multiple webapps being autostarted, it wouldn't
make sense to pass the same additional arguments to all of them.)

Make non-AJAX drilldowns (ea7f43d) work without JavaScript.

slburson/weblocks
=================

automagic-timezones
-------------------

Automatic timezone offset support.

JavaScript stashes the browser's current timezone offset into a cookie,
which Weblocks reads and makes available to the date presentation (as well
as the webapp).

Requires metatilities-base from 2012-2-4 or newer.

Don't reload the page if you couldn't set the cookie (caused infinite
reload loop).

bootstrap
---------

Ignore Emacs backups; formatting.

Typo in empty-menu message; formatting.

Export *STORE-NAMES*.

Adds a feature for generating links with a specific path.  RENDER-LINK now
takes a :URI-PATH parameter; if supplied, this forces the use of a non-AJAX
link with that path.

MAKE-ACTION-URL has been INCOMPATIBLY changed to take keyword parameters
rather than an &optional parameter (INCLUDE-QUESTION-MARK-P; why would this
ever be false?), and now also takes the :URI-PATH parameter.

In my opinion, EQUAL is the right predicate to use for something like
an item-id in a dataseq.

This is an INCOMPATIBLE change, as the comparison was formerly case-
insensitive.

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Extended MAKE-WIDGET a little for convenience (now accepts a list of
children, and a :NAME parameter).  Also, quieted some warnings which didn't
seem terribly informative.

New method SELECTOR-TOKENS-UNKNOWN called from UPDATE-CHILDREN when a
selector is given tokens it doesn't understand.  This allows easy
customization of the behavior in this case, on a selector basis.

Make START-WEBLOCKS a little more flexible, by allowing the default store
and hostnames to be supplied at runtime, via :WEBAPP-ARGS.

Doc string and comment improvements.

Added support for CLSQL normalized subclasses.

Small extension to TEXT-PRESENTATION (from which many presentations
inherit): initarg :NULL-STRING lets you specify what to display if
the value is null.

Let MAKE-QUICKFORM take additional keyword arguments, which it forwards to
MAKE-INSTANCE of the quickform class.

Add missing special declaration.

Rearranged forms to work around SBCL bug (a TYPEP call on a type textually
above the type's definition can make a fasl unloadable).

Automatic timezone offset support.

JavaScript stashes the browser's current timezone offset into a cookie,
which Weblocks reads and makes available to the date presentation (as well
as the webapp).

Requires metatilities-base from 2012-2-4 or newer.

Oops, should have created .gitignore rather than updating .hgignore.

Turn Hunchentoot's *CATCH-ERRORS-P* off in debug mode.  This allows
errors to be debugged in the Lisp session, rather than just dumping a
backtrace page to the browser.

SSL support.

Adds classes WEBLOCKS-SSL-ACCEPTOR and SSL-REDIRECT-ACCEPTOR.

Doc string improvement.

Some changes needed to set up database replication.
These include providing a way to pre-create all sequences used to
generate object IDs, rather than creating them lazily; and, a way
to get from the CLSQL names of tables and sequences to their SQL
names.

Oops, fix previous commit.

Gack, one more try.

Feature: navigation hidden panes can be updated dynamically.

If a datagrid's view specifies a caption, display it.

Don't reload the page if you couldn't set the cookie (caused infinite
reload loop).

When redirecting to a local URL, keep us in the same session, even if
cookies are off.

Added disabled-panes option to navigations.  This allows titles and
spacers in navigation menus.

CSS-related tweaks.

Don't add view captions to tables (we show them separately).

Bug fix.

Add "force-hostname" feature, by which an app with multiple hostnames
can redirect to the canonical one.

Force-hostname feature also requires changes to the ssl-redirect-acceptor.

Bug fix: sorting on a CLSQL slot with a :column didn't work.

Given this:

(def-view-class frob ()
  ((wedged? :accessor frob-wedged? :initform nil :type boolean
            :column is_wedged) ...))

(defview frob-table-view (:type table)
  (wedged? :present-as predicate))

Clicking on the "Wedged?" column header to sort on that column would get
an SQL error, because the slot name was not being translated to the
column name 'is_wedged'.

(Ironically, it worked if the slot came from a mixin view, but not in the
simple case.)

Prepend "field-" to a form field name to get the HTML class for the field.

I happened to use "text" as both a field name and an HTML class, and
had a CSS rule for the class.  I think it's better design to have a prefix
to (nearly) prevent these collisions.

Support for disabled form fields.  Somewhat experimental but seems to work.

Bug fix: WITH-TRANSACTION returned T on success rather than the values
of the last form in the body.

Incompatible change: view validators now receive the object and an alist
of the new field values to be stored in it.

(I needed the object to do the validation, and I thought that interning
keywords on every validator call was not the Right Thing.  Since I was
changing the interface anyway, to pass the object, I decided to use an
alist for the field values.)

Fix two minor bugs in LAZY-NAVIGATION.

Bug fix: widgets were being marked dirty during initialization.  More...

() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

() I undid some changes I had previously made to quiet warnings issued
when strings and functions were used as widgets.  It eventually became
clear this was not a good idea; only widgets should be in the widget tree.
I added a couple of calls to MAKE-WIDGET to better enforce this, and
restored the warnings.  (I also made it an error to pass a string in the
list of children passed to MAKE-WIDGET; an error that's easy to make is
to forget to wrap a call to something like WITH-HTML or RENDER-LINK in a
lambda, and this detects that.)

() I added a :DOM-CLASS argument to MAKE-WIDGET.

() Finally, I added a convenience macro MAKE-FLOW-WIDGET that makes it
easier to use flows.

Whoops -- incorrectly removed debugging code in previous commit.

Also, that commit should have had this in its message:

Oh, one more thing.  Functions passed to MAKE-WIDGET are now invoked with
the resulting widget as their first argument.  This is an incompatible
change, but it's convenient when you want to call ANSWER in the function
body.

Oops -- MAKE-FLOW-WIDGET shouldn't assign a DOM ID.

Bug fix: the progress indicator image often didn't work, because it was
being loaded using a relative path.

Bug fix: (setf widget-children) was discarding children in one case.
Specifically, when an empty list of children was supplied, and the type
alist didn't already have an entry for the type given, all children
were discarded.

Support for non-AJAX drilldowns in datagrids.  With these, the browser's
"back" button returns from the drilldown widget to the datagrid, as the
user might expect.

Example: you can have a datagrid of frobs selected by a 'navigation' at
'http://foo.com/frobs/'; the :drilldown-link-url-fn can return URLs like
'http://foo.com/frobs/42'.  To do this, wrap the datagrid in a custom
subclass of 'on-demand-selector', with a :lookup-function that, if given
an empty list of tokens, returns the datagrid itself, otherwise returns
the drilldown widget named by the first token.

Adding bountyoss.text (repo ownership verification).

Another BountyOSS nonce (negative test).

Changing negative test to positive.

One more BountyOSS nonce.  Ignore all this.

Fix and export ACTIVE-SESSIONS.

Use jquery instead of prototype & scriptaculous.

Fix XSS: 'render-textarea' wasn't escaping initial contents.

Bug fix: ':required-indicator nil' was ignored for radio buttons and
checkboxes.

Bug fix: crash when form validation failed on a form containing a radio
button or checkbox presentation.

Navigations: when the first menu item is selected by default, display it
as selected.

Make :hidep work on mixin view fields.

Critical security fix to ':parse-as float' in view fields.

Cache the public files path after computing it (premature optimization).

Revert "Make START-WEBLOCKS a little more flexible, by allowing the default store"

This reverts commit d9afd2e3487f8500b1f669fe2bdbbdff61f3b399.

The right way to do what I was trying to do was to say :AUTOSTART NIL in
the DEFWEBAPP, and then call START-WEBAPP myself with the additional
arguments.  (If there were multiple webapps being autostarted, it wouldn't
make sense to pass the same additional arguments to all of them.)

Make non-AJAX drilldowns (ea7f43d) work without JavaScript.

Use jquery instead of prototype & scriptaculous.

Copied in weblocks-jquery.js as weblocks.js.

Also updated jQuery.

Adding jQuery-seq, jQuery-BBQ.

Adding minified version of jquery-seq.

Don't keep multiple versions of jQuery.

Current version is 1.8.1.

Tweaks to work with jQuery.  Still unconverted: flash widget; dialogs.

Fixes to weblocks.js for forms, AJAX.

Adding Bootstrap files.

The pub/img symlink is needed by Bootstrap.

Adding less.js (minified).

First cut at Twitter Bootstrap support.  Still fairly rough.

RENDER-VIEW-FIELD-VALUE had the wrong argument precedence order.

Let form views get options through to RENDER-BUTTON.

Upgrading Bootstrap to v2.1.1.

Gzip stylesheets even in debug mode.  Desirable since bootstrap.css is
huge.

New table view feature: a row class function for highlighting individual
rows (Bootstrap feature).

Make default form Submit button have kind "primary".

Set *default-database* at the same time as *default-store*.

Very minor tweaks.

Allow pages to be cached if they contain no action links (previously, we
always turned off browser/proxy caching).  Astonishingly, this simple
heuristic seems to do the right thing for sites with some static pages.

Correct erroneous comment.

Oops -- removing BountyOSS-specific Less code.  Other minor fixes.

Couple of tweaks for HTML5.

Add TITLE-FN widget slot.  Also, make it (and other initargs) passable
via MAKE-FLOW-WIDGET.

Oops -- FORCE-HOSTNAME needed a default value.

Oops -- FORCE-HOSTNAME needed a default value.

Don't get into a bad state if acceptor startup fails.

Macro TIMING: Silence fixnum arithmetic optimization notes on SBCL.

Don't activate the JavaScript that sets the timezone cookie until we
render a page that actually needs it.

New "default session" feature allows you to put off making a session
until the user pulls up a dynamic page (one with an action link).  This
saves memory if your site has some static pages, and also allows the
static pages to be cached by a reverse proxy.

Oops.

Add 'list' presentation type and parser, for arbitrary list structure.

Change default for MAKE-QUICKFORM :ANSWERP from T to NIL.

Add missing ASDF dependence.

Shadowing-import 'with-transaction' in a couple of places.

Minor doc fix.

Reflect recently added dependency in weblocks.asd.

Applied patch from Francois-Rene Rideau for latest asdf (2.26.152)

Clickjacking protection using the X-Frame-Options header.

Don't crash on a HEAD request.

Doc string correction.

catch-errors-oops
-----------------

Ignore Emacs backups; formatting.

Typo in empty-menu message; formatting.

Export *STORE-NAMES*.

Adds a feature for generating links with a specific path.  RENDER-LINK now
takes a :URI-PATH parameter; if supplied, this forces the use of a non-AJAX
link with that path.

MAKE-ACTION-URL has been INCOMPATIBLY changed to take keyword parameters
rather than an &optional parameter (INCLUDE-QUESTION-MARK-P; why would this
ever be false?), and now also takes the :URI-PATH parameter.

In my opinion, EQUAL is the right predicate to use for something like
an item-id in a dataseq.

This is an INCOMPATIBLE change, as the comparison was formerly case-
insensitive.

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Extended MAKE-WIDGET a little for convenience (now accepts a list of
children, and a :NAME parameter).  Also, quieted some warnings which didn't
seem terribly informative.

New method SELECTOR-TOKENS-UNKNOWN called from UPDATE-CHILDREN when a
selector is given tokens it doesn't understand.  This allows easy
customization of the behavior in this case, on a selector basis.

Make START-WEBLOCKS a little more flexible, by allowing the default store
and hostnames to be supplied at runtime, via :WEBAPP-ARGS.

Doc string and comment improvements.

Added support for CLSQL normalized subclasses.

Small extension to TEXT-PRESENTATION (from which many presentations
inherit): initarg :NULL-STRING lets you specify what to display if
the value is null.

Let MAKE-QUICKFORM take additional keyword arguments, which it forwards to
MAKE-INSTANCE of the quickform class.

Add missing special declaration.

Rearranged forms to work around SBCL bug (a TYPEP call on a type textually
above the type's definition can make a fasl unloadable).

Automatic timezone offset support.

JavaScript stashes the browser's current timezone offset into a cookie,
which Weblocks reads and makes available to the date presentation (as well
as the webapp).

Requires metatilities-base from 2012-2-4 or newer.

Oops, should have created .gitignore rather than updating .hgignore.

Turn Hunchentoot's *CATCH-ERRORS-P* off in debug mode.  This allows
errors to be debugged in the Lisp session, rather than just dumping a
backtrace page to the browser.

catch-errors
------------

Turn Hunchentoot's *CATCH-ERRORS-P* off in debug mode.  This allows
errors to be debugged in the Lisp session, rather than just dumping a
backtrace page to the browser.

clsql-normalized-subclasses
---------------------------

Added support for CLSQL normalized subclasses.

datagrid-caption
----------------

If a datagrid's view specifies a caption, display it.

dataseq-item-selected-p
-----------------------

In my opinion, EQUAL is the right predicate to use for something like
an item-id in a dataseq.

This is an INCOMPATIBLE change, as the comparison was formerly case-
insensitive.

jquery
------

Ignore Emacs backups; formatting.

Typo in empty-menu message; formatting.

Export *STORE-NAMES*.

Adds a feature for generating links with a specific path.  RENDER-LINK now
takes a :URI-PATH parameter; if supplied, this forces the use of a non-AJAX
link with that path.

MAKE-ACTION-URL has been INCOMPATIBLY changed to take keyword parameters
rather than an &optional parameter (INCLUDE-QUESTION-MARK-P; why would this
ever be false?), and now also takes the :URI-PATH parameter.

In my opinion, EQUAL is the right predicate to use for something like
an item-id in a dataseq.

This is an INCOMPATIBLE change, as the comparison was formerly case-
insensitive.

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Extended MAKE-WIDGET a little for convenience (now accepts a list of
children, and a :NAME parameter).  Also, quieted some warnings which didn't
seem terribly informative.

New method SELECTOR-TOKENS-UNKNOWN called from UPDATE-CHILDREN when a
selector is given tokens it doesn't understand.  This allows easy
customization of the behavior in this case, on a selector basis.

Make START-WEBLOCKS a little more flexible, by allowing the default store
and hostnames to be supplied at runtime, via :WEBAPP-ARGS.

Doc string and comment improvements.

Added support for CLSQL normalized subclasses.

Small extension to TEXT-PRESENTATION (from which many presentations
inherit): initarg :NULL-STRING lets you specify what to display if
the value is null.

Let MAKE-QUICKFORM take additional keyword arguments, which it forwards to
MAKE-INSTANCE of the quickform class.

Add missing special declaration.

Rearranged forms to work around SBCL bug (a TYPEP call on a type textually
above the type's definition can make a fasl unloadable).

Automatic timezone offset support.

JavaScript stashes the browser's current timezone offset into a cookie,
which Weblocks reads and makes available to the date presentation (as well
as the webapp).

Requires metatilities-base from 2012-2-4 or newer.

Oops, should have created .gitignore rather than updating .hgignore.

Turn Hunchentoot's *CATCH-ERRORS-P* off in debug mode.  This allows
errors to be debugged in the Lisp session, rather than just dumping a
backtrace page to the browser.

SSL support.

Adds classes WEBLOCKS-SSL-ACCEPTOR and SSL-REDIRECT-ACCEPTOR.

Doc string improvement.

Some changes needed to set up database replication.
These include providing a way to pre-create all sequences used to
generate object IDs, rather than creating them lazily; and, a way
to get from the CLSQL names of tables and sequences to their SQL
names.

Oops, fix previous commit.

Gack, one more try.

Feature: navigation hidden panes can be updated dynamically.

If a datagrid's view specifies a caption, display it.

Don't reload the page if you couldn't set the cookie (caused infinite
reload loop).

When redirecting to a local URL, keep us in the same session, even if
cookies are off.

Added disabled-panes option to navigations.  This allows titles and
spacers in navigation menus.

CSS-related tweaks.

Don't add view captions to tables (we show them separately).

Bug fix.

Add "force-hostname" feature, by which an app with multiple hostnames
can redirect to the canonical one.

Force-hostname feature also requires changes to the ssl-redirect-acceptor.

Bug fix: sorting on a CLSQL slot with a :column didn't work.

Given this:

(def-view-class frob ()
  ((wedged? :accessor frob-wedged? :initform nil :type boolean
            :column is_wedged) ...))

(defview frob-table-view (:type table)
  (wedged? :present-as predicate))

Clicking on the "Wedged?" column header to sort on that column would get
an SQL error, because the slot name was not being translated to the
column name 'is_wedged'.

(Ironically, it worked if the slot came from a mixin view, but not in the
simple case.)

Prepend "field-" to a form field name to get the HTML class for the field.

I happened to use "text" as both a field name and an HTML class, and
had a CSS rule for the class.  I think it's better design to have a prefix
to (nearly) prevent these collisions.

Support for disabled form fields.  Somewhat experimental but seems to work.

Bug fix: WITH-TRANSACTION returned T on success rather than the values
of the last form in the body.

Incompatible change: view validators now receive the object and an alist
of the new field values to be stored in it.

(I needed the object to do the validation, and I thought that interning
keywords on every validator call was not the Right Thing.  Since I was
changing the interface anyway, to pass the object, I decided to use an
alist for the field values.)

Fix two minor bugs in LAZY-NAVIGATION.

Bug fix: widgets were being marked dirty during initialization.  More...

() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

() I undid some changes I had previously made to quiet warnings issued
when strings and functions were used as widgets.  It eventually became
clear this was not a good idea; only widgets should be in the widget tree.
I added a couple of calls to MAKE-WIDGET to better enforce this, and
restored the warnings.  (I also made it an error to pass a string in the
list of children passed to MAKE-WIDGET; an error that's easy to make is
to forget to wrap a call to something like WITH-HTML or RENDER-LINK in a
lambda, and this detects that.)

() I added a :DOM-CLASS argument to MAKE-WIDGET.

() Finally, I added a convenience macro MAKE-FLOW-WIDGET that makes it
easier to use flows.

Whoops -- incorrectly removed debugging code in previous commit.

Also, that commit should have had this in its message:

Oh, one more thing.  Functions passed to MAKE-WIDGET are now invoked with
the resulting widget as their first argument.  This is an incompatible
change, but it's convenient when you want to call ANSWER in the function
body.

Oops -- MAKE-FLOW-WIDGET shouldn't assign a DOM ID.

Bug fix: the progress indicator image often didn't work, because it was
being loaded using a relative path.

Bug fix: (setf widget-children) was discarding children in one case.
Specifically, when an empty list of children was supplied, and the type
alist didn't already have an entry for the type given, all children
were discarded.

Support for non-AJAX drilldowns in datagrids.  With these, the browser's
"back" button returns from the drilldown widget to the datagrid, as the
user might expect.

Example: you can have a datagrid of frobs selected by a 'navigation' at
'http://foo.com/frobs/'; the :drilldown-link-url-fn can return URLs like
'http://foo.com/frobs/42'.  To do this, wrap the datagrid in a custom
subclass of 'on-demand-selector', with a :lookup-function that, if given
an empty list of tokens, returns the datagrid itself, otherwise returns
the drilldown widget named by the first token.

Adding bountyoss.text (repo ownership verification).

Another BountyOSS nonce (negative test).

Changing negative test to positive.

One more BountyOSS nonce.  Ignore all this.

Fix and export ACTIVE-SESSIONS.

Use jquery instead of prototype & scriptaculous.

Fix XSS: 'render-textarea' wasn't escaping initial contents.

Bug fix: ':required-indicator nil' was ignored for radio buttons and
checkboxes.

Bug fix: crash when form validation failed on a form containing a radio
button or checkbox presentation.

Navigations: when the first menu item is selected by default, display it
as selected.

Make :hidep work on mixin view fields.

Critical security fix to ':parse-as float' in view fields.

Cache the public files path after computing it (premature optimization).

Revert "Make START-WEBLOCKS a little more flexible, by allowing the default store"

This reverts commit d9afd2e3487f8500b1f669fe2bdbbdff61f3b399.

The right way to do what I was trying to do was to say :AUTOSTART NIL in
the DEFWEBAPP, and then call START-WEBAPP myself with the additional
arguments.  (If there were multiple webapps being autostarted, it wouldn't
make sense to pass the same additional arguments to all of them.)

Make non-AJAX drilldowns (ea7f43d) work without JavaScript.

Use jquery instead of prototype & scriptaculous.

Copied in weblocks-jquery.js as weblocks.js.

Also updated jQuery.

Adding jQuery-seq, jQuery-BBQ.

Adding minified version of jquery-seq.

Don't keep multiple versions of jQuery.

Current version is 1.8.1.

Tweaks to work with jQuery.  Still unconverted: flash widget; dialogs.

Fixes to weblocks.js for forms, AJAX.

RENDER-VIEW-FIELD-VALUE had the wrong argument precedence order.

lazy-sessions
-------------

Ignore Emacs backups; formatting.

Typo in empty-menu message; formatting.

Export *STORE-NAMES*.

Adds a feature for generating links with a specific path.  RENDER-LINK now
takes a :URI-PATH parameter; if supplied, this forces the use of a non-AJAX
link with that path.

MAKE-ACTION-URL has been INCOMPATIBLY changed to take keyword parameters
rather than an &optional parameter (INCLUDE-QUESTION-MARK-P; why would this
ever be false?), and now also takes the :URI-PATH parameter.

In my opinion, EQUAL is the right predicate to use for something like
an item-id in a dataseq.

This is an INCOMPATIBLE change, as the comparison was formerly case-
insensitive.

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Extended MAKE-WIDGET a little for convenience (now accepts a list of
children, and a :NAME parameter).  Also, quieted some warnings which didn't
seem terribly informative.

New method SELECTOR-TOKENS-UNKNOWN called from UPDATE-CHILDREN when a
selector is given tokens it doesn't understand.  This allows easy
customization of the behavior in this case, on a selector basis.

Make START-WEBLOCKS a little more flexible, by allowing the default store
and hostnames to be supplied at runtime, via :WEBAPP-ARGS.

Doc string and comment improvements.

Added support for CLSQL normalized subclasses.

Small extension to TEXT-PRESENTATION (from which many presentations
inherit): initarg :NULL-STRING lets you specify what to display if
the value is null.

Let MAKE-QUICKFORM take additional keyword arguments, which it forwards to
MAKE-INSTANCE of the quickform class.

Add missing special declaration.

Rearranged forms to work around SBCL bug (a TYPEP call on a type textually
above the type's definition can make a fasl unloadable).

Automatic timezone offset support.

JavaScript stashes the browser's current timezone offset into a cookie,
which Weblocks reads and makes available to the date presentation (as well
as the webapp).

Requires metatilities-base from 2012-2-4 or newer.

Oops, should have created .gitignore rather than updating .hgignore.

Turn Hunchentoot's *CATCH-ERRORS-P* off in debug mode.  This allows
errors to be debugged in the Lisp session, rather than just dumping a
backtrace page to the browser.

SSL support.

Adds classes WEBLOCKS-SSL-ACCEPTOR and SSL-REDIRECT-ACCEPTOR.

Doc string improvement.

Some changes needed to set up database replication.
These include providing a way to pre-create all sequences used to
generate object IDs, rather than creating them lazily; and, a way
to get from the CLSQL names of tables and sequences to their SQL
names.

Oops, fix previous commit.

Gack, one more try.

Feature: navigation hidden panes can be updated dynamically.

If a datagrid's view specifies a caption, display it.

Don't reload the page if you couldn't set the cookie (caused infinite
reload loop).

When redirecting to a local URL, keep us in the same session, even if
cookies are off.

Added disabled-panes option to navigations.  This allows titles and
spacers in navigation menus.

CSS-related tweaks.

Don't add view captions to tables (we show them separately).

Bug fix.

Add "force-hostname" feature, by which an app with multiple hostnames
can redirect to the canonical one.

Force-hostname feature also requires changes to the ssl-redirect-acceptor.

Bug fix: sorting on a CLSQL slot with a :column didn't work.

Given this:

(def-view-class frob ()
  ((wedged? :accessor frob-wedged? :initform nil :type boolean
            :column is_wedged) ...))

(defview frob-table-view (:type table)
  (wedged? :present-as predicate))

Clicking on the "Wedged?" column header to sort on that column would get
an SQL error, because the slot name was not being translated to the
column name 'is_wedged'.

(Ironically, it worked if the slot came from a mixin view, but not in the
simple case.)

Prepend "field-" to a form field name to get the HTML class for the field.

I happened to use "text" as both a field name and an HTML class, and
had a CSS rule for the class.  I think it's better design to have a prefix
to (nearly) prevent these collisions.

Support for disabled form fields.  Somewhat experimental but seems to work.

Bug fix: WITH-TRANSACTION returned T on success rather than the values
of the last form in the body.

Incompatible change: view validators now receive the object and an alist
of the new field values to be stored in it.

(I needed the object to do the validation, and I thought that interning
keywords on every validator call was not the Right Thing.  Since I was
changing the interface anyway, to pass the object, I decided to use an
alist for the field values.)

Fix two minor bugs in LAZY-NAVIGATION.

Bug fix: widgets were being marked dirty during initialization.  More...

() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

() I undid some changes I had previously made to quiet warnings issued
when strings and functions were used as widgets.  It eventually became
clear this was not a good idea; only widgets should be in the widget tree.
I added a couple of calls to MAKE-WIDGET to better enforce this, and
restored the warnings.  (I also made it an error to pass a string in the
list of children passed to MAKE-WIDGET; an error that's easy to make is
to forget to wrap a call to something like WITH-HTML or RENDER-LINK in a
lambda, and this detects that.)

() I added a :DOM-CLASS argument to MAKE-WIDGET.

() Finally, I added a convenience macro MAKE-FLOW-WIDGET that makes it
easier to use flows.

Whoops -- incorrectly removed debugging code in previous commit.

Also, that commit should have had this in its message:

Oh, one more thing.  Functions passed to MAKE-WIDGET are now invoked with
the resulting widget as their first argument.  This is an incompatible
change, but it's convenient when you want to call ANSWER in the function
body.

Oops -- MAKE-FLOW-WIDGET shouldn't assign a DOM ID.

Bug fix: the progress indicator image often didn't work, because it was
being loaded using a relative path.

Bug fix: (setf widget-children) was discarding children in one case.
Specifically, when an empty list of children was supplied, and the type
alist didn't already have an entry for the type given, all children
were discarded.

Support for non-AJAX drilldowns in datagrids.  With these, the browser's
"back" button returns from the drilldown widget to the datagrid, as the
user might expect.

Example: you can have a datagrid of frobs selected by a 'navigation' at
'http://foo.com/frobs/'; the :drilldown-link-url-fn can return URLs like
'http://foo.com/frobs/42'.  To do this, wrap the datagrid in a custom
subclass of 'on-demand-selector', with a :lookup-function that, if given
an empty list of tokens, returns the datagrid itself, otherwise returns
the drilldown widget named by the first token.

Adding bountyoss.text (repo ownership verification).

Another BountyOSS nonce (negative test).

Changing negative test to positive.

One more BountyOSS nonce.  Ignore all this.

Fix and export ACTIVE-SESSIONS.

Use jquery instead of prototype & scriptaculous.

Fix XSS: 'render-textarea' wasn't escaping initial contents.

Bug fix: ':required-indicator nil' was ignored for radio buttons and
checkboxes.

Bug fix: crash when form validation failed on a form containing a radio
button or checkbox presentation.

Navigations: when the first menu item is selected by default, display it
as selected.

Make :hidep work on mixin view fields.

Critical security fix to ':parse-as float' in view fields.

Cache the public files path after computing it (premature optimization).

Revert "Make START-WEBLOCKS a little more flexible, by allowing the default store"

This reverts commit d9afd2e3487f8500b1f669fe2bdbbdff61f3b399.

The right way to do what I was trying to do was to say :AUTOSTART NIL in
the DEFWEBAPP, and then call START-WEBAPP myself with the additional
arguments.  (If there were multiple webapps being autostarted, it wouldn't
make sense to pass the same additional arguments to all of them.)

Make non-AJAX drilldowns (ea7f43d) work without JavaScript.

Use jquery instead of prototype & scriptaculous.

Copied in weblocks-jquery.js as weblocks.js.

Also updated jQuery.

Adding jQuery-seq, jQuery-BBQ.

Adding minified version of jquery-seq.

Don't keep multiple versions of jQuery.

Current version is 1.8.1.

Tweaks to work with jQuery.  Still unconverted: flash widget; dialogs.

Fixes to weblocks.js for forms, AJAX.

Adding Bootstrap files.

The pub/img symlink is needed by Bootstrap.

Adding less.js (minified).

First cut at Twitter Bootstrap support.  Still fairly rough.

RENDER-VIEW-FIELD-VALUE had the wrong argument precedence order.

Let form views get options through to RENDER-BUTTON.

Upgrading Bootstrap to v2.1.1.

Gzip stylesheets even in debug mode.  Desirable since bootstrap.css is
huge.

New table view feature: a row class function for highlighting individual
rows (Bootstrap feature).

Make default form Submit button have kind "primary".

Set *default-database* at the same time as *default-store*.

Very minor tweaks.

Allow pages to be cached if they contain no action links (previously, we
always turned off browser/proxy caching).  Astonishingly, this simple
heuristic seems to do the right thing for sites with some static pages.

Correct erroneous comment.

Oops -- removing BountyOSS-specific Less code.  Other minor fixes.

Couple of tweaks for HTML5.

Add TITLE-FN widget slot.  Also, make it (and other initargs) passable
via MAKE-FLOW-WIDGET.

Oops -- FORCE-HOSTNAME needed a default value.

Oops -- FORCE-HOSTNAME needed a default value.

Don't get into a bad state if acceptor startup fails.

Macro TIMING: Silence fixnum arithmetic optimization notes on SBCL.

Don't activate the JavaScript that sets the timezone cookie until we
render a page that actually needs it.

New "default session" feature allows you to put off making a session
until the user pulls up a dynamic page (one with an action link).  This
saves memory if your site has some static pages, and also allows the
static pages to be cached by a reverse proxy.

Oops.

Add 'list' presentation type and parser, for arbitrary list structure.

make-quickform-other-keys
-------------------------

Let MAKE-QUICKFORM take additional keyword arguments, which it forwards to
MAKE-INSTANCE of the quickform class.

make-widget
-----------

Extended MAKE-WIDGET a little for convenience (now accepts a list of
children, and a :NAME parameter).  Also, quieted some warnings which didn't
seem terribly informative.

master
------

Ignore Emacs backups; formatting.

Typo in empty-menu message; formatting.

Export *STORE-NAMES*.

Adds a feature for generating links with a specific path.  RENDER-LINK now
takes a :URI-PATH parameter; if supplied, this forces the use of a non-AJAX
link with that path.

MAKE-ACTION-URL has been INCOMPATIBLY changed to take keyword parameters
rather than an &optional parameter (INCLUDE-QUESTION-MARK-P; why would this
ever be false?), and now also takes the :URI-PATH parameter.

In my opinion, EQUAL is the right predicate to use for something like
an item-id in a dataseq.

This is an INCOMPATIBLE change, as the comparison was formerly case-
insensitive.

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Extended MAKE-WIDGET a little for convenience (now accepts a list of
children, and a :NAME parameter).  Also, quieted some warnings which didn't
seem terribly informative.

New method SELECTOR-TOKENS-UNKNOWN called from UPDATE-CHILDREN when a
selector is given tokens it doesn't understand.  This allows easy
customization of the behavior in this case, on a selector basis.

Make START-WEBLOCKS a little more flexible, by allowing the default store
and hostnames to be supplied at runtime, via :WEBAPP-ARGS.

Doc string and comment improvements.

Added support for CLSQL normalized subclasses.

Small extension to TEXT-PRESENTATION (from which many presentations
inherit): initarg :NULL-STRING lets you specify what to display if
the value is null.

Let MAKE-QUICKFORM take additional keyword arguments, which it forwards to
MAKE-INSTANCE of the quickform class.

Add missing special declaration.

Rearranged forms to work around SBCL bug (a TYPEP call on a type textually
above the type's definition can make a fasl unloadable).

Automatic timezone offset support.

JavaScript stashes the browser's current timezone offset into a cookie,
which Weblocks reads and makes available to the date presentation (as well
as the webapp).

Requires metatilities-base from 2012-2-4 or newer.

Oops, should have created .gitignore rather than updating .hgignore.

Turn Hunchentoot's *CATCH-ERRORS-P* off in debug mode.  This allows
errors to be debugged in the Lisp session, rather than just dumping a
backtrace page to the browser.

SSL support.

Adds classes WEBLOCKS-SSL-ACCEPTOR and SSL-REDIRECT-ACCEPTOR.

Doc string improvement.

Some changes needed to set up database replication.
These include providing a way to pre-create all sequences used to
generate object IDs, rather than creating them lazily; and, a way
to get from the CLSQL names of tables and sequences to their SQL
names.

Oops, fix previous commit.

Gack, one more try.

Feature: navigation hidden panes can be updated dynamically.

If a datagrid's view specifies a caption, display it.

Don't reload the page if you couldn't set the cookie (caused infinite
reload loop).

When redirecting to a local URL, keep us in the same session, even if
cookies are off.

Added disabled-panes option to navigations.  This allows titles and
spacers in navigation menus.

CSS-related tweaks.

Don't add view captions to tables (we show them separately).

Bug fix.

Add "force-hostname" feature, by which an app with multiple hostnames
can redirect to the canonical one.

Force-hostname feature also requires changes to the ssl-redirect-acceptor.

Bug fix: sorting on a CLSQL slot with a :column didn't work.

Given this:

(def-view-class frob ()
  ((wedged? :accessor frob-wedged? :initform nil :type boolean
            :column is_wedged) ...))

(defview frob-table-view (:type table)
  (wedged? :present-as predicate))

Clicking on the "Wedged?" column header to sort on that column would get
an SQL error, because the slot name was not being translated to the
column name 'is_wedged'.

(Ironically, it worked if the slot came from a mixin view, but not in the
simple case.)

Prepend "field-" to a form field name to get the HTML class for the field.

I happened to use "text" as both a field name and an HTML class, and
had a CSS rule for the class.  I think it's better design to have a prefix
to (nearly) prevent these collisions.

Support for disabled form fields.  Somewhat experimental but seems to work.

Bug fix: WITH-TRANSACTION returned T on success rather than the values
of the last form in the body.

Incompatible change: view validators now receive the object and an alist
of the new field values to be stored in it.

(I needed the object to do the validation, and I thought that interning
keywords on every validator call was not the Right Thing.  Since I was
changing the interface anyway, to pass the object, I decided to use an
alist for the field values.)

Fix two minor bugs in LAZY-NAVIGATION.

Bug fix: widgets were being marked dirty during initialization.  More...

() Weblocks does some MOP hacking to cause widgets to be marked dirty
when one of their slots is modified.  But, this was happening even when
the widget was being initialized; causing their RENDER-WIDGET methods to
be called unnecessarily.  This was at least a performance bug.  Now, a
widget is never marked dirty until it has been rendered the first time.

() I undid some changes I had previously made to quiet warnings issued
when strings and functions were used as widgets.  It eventually became
clear this was not a good idea; only widgets should be in the widget tree.
I added a couple of calls to MAKE-WIDGET to better enforce this, and
restored the warnings.  (I also made it an error to pass a string in the
list of children passed to MAKE-WIDGET; an error that's easy to make is
to forget to wrap a call to something like WITH-HTML or RENDER-LINK in a
lambda, and this detects that.)

() I added a :DOM-CLASS argument to MAKE-WIDGET.

() Finally, I added a convenience macro MAKE-FLOW-WIDGET that makes it
easier to use flows.

Whoops -- incorrectly removed debugging code in previous commit.

Also, that commit should have had this in its message:

Oh, one more thing.  Functions passed to MAKE-WIDGET are now invoked with
the resulting widget as their first argument.  This is an incompatible
change, but it's convenient when you want to call ANSWER in the function
body.

Oops -- MAKE-FLOW-WIDGET shouldn't assign a DOM ID.

Bug fix: the progress indicator image often didn't work, because it was
being loaded using a relative path.

Bug fix: (setf widget-children) was discarding children in one case.
Specifically, when an empty list of children was supplied, and the type
alist didn't already have an entry for the type given, all children
were discarded.

Support for non-AJAX drilldowns in datagrids.  With these, the browser's
"back" button returns from the drilldown widget to the datagrid, as the
user might expect.

Example: you can have a datagrid of frobs selected by a 'navigation' at
'http://foo.com/frobs/'; the :drilldown-link-url-fn can return URLs like
'http://foo.com/frobs/42'.  To do this, wrap the datagrid in a custom
subclass of 'on-demand-selector', with a :lookup-function that, if given
an empty list of tokens, returns the datagrid itself, otherwise returns
the drilldown widget named by the first token.

Adding bountyoss.text (repo ownership verification).

Another BountyOSS nonce (negative test).

Changing negative test to positive.

One more BountyOSS nonce.  Ignore all this.

Fix and export ACTIVE-SESSIONS.

Fix XSS: 'render-textarea' wasn't escaping initial contents.

Bug fix: ':required-indicator nil' was ignored for radio buttons and
checkboxes.

Bug fix: crash when form validation failed on a form containing a radio
button or checkbox presentation.

Navigations: when the first menu item is selected by default, display it
as selected.

Make :hidep work on mixin view fields.

Critical security fix to ':parse-as float' in view fields.

Cache the public files path after computing it (premature optimization).

Revert "Make START-WEBLOCKS a little more flexible, by allowing the default store"

This reverts commit d9afd2e3487f8500b1f669fe2bdbbdff61f3b399.

The right way to do what I was trying to do was to say :AUTOSTART NIL in
the DEFWEBAPP, and then call START-WEBAPP myself with the additional
arguments.  (If there were multiple webapps being autostarted, it wouldn't
make sense to pass the same additional arguments to all of them.)

Make non-AJAX drilldowns (ea7f43d) work without JavaScript.

Oops -- FORCE-HOSTNAME needed a default value.

Re-introducing WITH-TRANSACTION (change previously reverted because of
package problems, which should now be fixed).

Original commit message:

I thought Weblocks should export a WITH-TRANSACTION macro to go with the
other functions in this file.  Implementing it, I noticed a bug in
DYNAMIC-TRANSACTION: it would commit, rather than rollback, on a nonlocal
exit out of the body if that exit wasn't done by signalling an error
(i.e. was done by THROW, RETURN, or GO).  I fixed this.  I guessed
that this was the "unique non-local exit unwind behavior" being warned
about, and removed the warning.

minor-stuff
-----------

Ignore Emacs backups; formatting.

Typo in empty-menu message; formatting.

Export *STORE-NAMES*.

Doc string and comment improvements.

Add missing special declaration.

Oops, should have created .gitignore rather than updating .hgignore.

Doc string improvement.

navigation-dynamic-hiding
-------------------------

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Feature: navigation hidden panes can be updated dynamically.

navigation-extra-menu-items
---------------------------

Added an EXTRA-MENU-ITEMS slot to NAVIGATION; if supplied, it contains
additional items to be passed with the first argument to RENDER-MENU.  I
used this (along with the :URI-PATH patch) to add a "Log out" button to my
navigation menu.

Added disabled-panes option to navigations.  This allows titles and
spacers in navigation menus.

non-ajax-link
-------------

Adds a feature for generating links with a specific path.  RENDER-LINK now
takes a :URI-PATH parameter; if supplied, this forces the use of a non-AJAX
link with that path.

MAKE-ACTION-URL has been INCOMPATIBLY changed to take keyword parameters
rather than an &optional parameter (INCLUDE-QUESTION-MARK-P; why would this
ever be false?), and now also takes the :URI-PATH parameter.

replication
-----------

Added support for CLSQL normalized subclasses.

Some changes needed to set up database replication.
These include providing a way to pre-create all sequences used to
generate object IDs, rather than creating them lazily; and, a way
to get from the CLSQL names of tables and sequences to their SQL
names.

Oops, fix previous commit.

Gack, one more try.

sbcl-typep-workaround
---------------------

Rearranged forms to work around SBCL bug (a TYPEP call on a type textually
above the type's definition can make a fasl unloadable).

selector-tokens-unknown
-----------------------

New method SELECTOR-TOKENS-UNKNOWN called from UPDATE-CHILDREN when a
selector is given tokens it doesn't understand.  This allows easy
customization of the behavior in this case, on a selector basis.

start-weblocks-webapp-args
--------------------------

Make START-WEBLOCKS a little more flexible, by allowing the default store
and hostnames to be supplied at runtime, via :WEBAPP-ARGS.

text-presentation-null-string
-----------------------------

Small extension to TEXT-PRESENTATION (from which many presentations
inherit): initarg :NULL-STRING lets you specify what to display if
the value is null.

