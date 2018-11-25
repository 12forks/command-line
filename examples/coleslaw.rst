=================
kingcons/coleslaw
=================

equwal/coleslaw
===============

master
------

Automatically expand load command for any lisp implementation that someone might be using for this.

truex.eu
--------

Automatically expand load command for any lisp implementation that someone might be using for this.

New themes.

For server.

programingship/coleslaw
=======================

master
------

An url should be lowercase.

Disqus js will refuse executing when use https.

Manual loading Disqus.

Fix disqus loading link.

Prefer slug url to title one.

Adjust article title to 1.2em.

Added favicon head link.

Body font use 16px size.

Revert "Manual loading Disqus"

This reverts commit 9d79d0bd08b417300c4a8cf990d25a37faa5aca0.

wangjiezhe/coleslaw
===================

develop
-------

Update the disqus universal embed script.

Remove site-url config in disqus.

guicho271828/coleslaw
=====================

README
------

README plug-ins look better on a table format.

Move the orders; hacking is less important for new users.

Less mental steps before reaching Installation.

base-template-span
------------------

[hyde template] use span + CSS for the sitenav separator.

Absolute address to root with {$config.domain} is not necessary

This is problematic when I preview the generated results with clack

clackup <(echo "(lack:builder (:static :path #'identity) #'identity)")

All links got broken due to the reference to {$config.domain}

roswell
-------

[README] plug-ins look better on a table format.

[README] move the orders; hacking is less important for new users.

[README] less mental steps before reaching Installation.

Implemented coleslaw roswell command.

[README] Roswell-based tutorial.

[coleslaw -h]

[coleslaw new] optional third argument NAME for coleslaw new.

[coleslaw new] when `type` is `page`, insert the URL.

[coleslaw copy-theme] coleslaw copy-theme.

[coleslaw preview] new roswell subcommand, static server using clack.

[coleslaw watch] added a new command.

[coleslaw watch-preview] added another command.

[coleslaw new] fix the default date; "day" was Mon, Tue etc.

[coleslaw preview] preview dir defaults to the deploy-dir.

Make the script automatically compiled when `ros install`ed.

rsync-deploy
------------

Removed the default deploy method and added RSYNC plugin.

As requested (Im not sure)

adlai/coleslaw
==============

master
------

Initial draft of snide theme, cribbed from hyde.

abeaumont/coleslaw
==================

master
------

Add support for either an automatic or manual excerpt for index.

Include :excerpt metadata in test.

Modify existing themes' index to make use of posts' excerpt.

Update documentation and config example for excerpt support.

Fix indentation.

Fix excerpt generation

Excerpt must be set before text is set, since text may be needed to
generate the excerpt and it should not be already rendered.

novalix/coleslaw
================

hyde-resp
---------

Create HTML for the mobile nav to work and add link to new css file.

Add IDs for relative-nav links.

Add IDs for relative-nav links.

Change relative-nav div from id to class.

Remove "float: left" from article-meta and article-content classes, since they are not really needed anyway and somtimes produce strange artifacts. Reduce the padding of these classes from 5 to 4%. Add styles for the relative links.

Add Stylesheet for the mobile navigation including blank lines and comments for readability and hopefully clarity.

svetlyak40wt/coleslaw
=====================

better-gh-pages-plugin
----------------------

Now gh-pages plugin is able to push site to github

Previously, gh-pages plugin only created a CNAME file
inside a staging directory, but this version
is able to update gh-pages branch of the current
repository and to push this branch to the GitHub.

This way, publishing site becomes as simple, as:

    coleslaw .

better-rst-plugin
-----------------

Remove unnecessary HTML elements, such as html, head, body.

Hanging paren and space were removed.

Using `write-document` without `with-output-to-string`.

ebrasca/coleslaw
================

master
------

Add possibility to write posts/pages in lispy syntax with cl-who.

Change asdf:load-system for ql:quickload.

libre-man/coleslaw
==================

custom_bindings
---------------

Make it possible to read metadata from multiple lines.

template-engine
---------------

Initial implementation of djula as templating engine

Backwards compatible with previous versions. You can specify a engine
in the config with the template-engine key.

Added some documentation for djula templates.

Added a hyde-djula theme and corrected a spelling mistake.

Hyde-djula is the same as hyde only made using djula and not closure.

Corrected the name for template-engine in the config.

Updated some documentation.

Refactored code to implement template engine as plugins.

Added templates for atom, rss and sitemap each template engine.

Updated source to add template engine to calls for rendering.

mawis/coleslaw
==============

master
------

New theme 'bootstrap'.

This theme is based on the 'readable' theme but using plain bootstrap 3.3.5
instead of readable.

It also adds support for the :img configuration in the sitenav that allows links
to be shown as images.

Applying the readable theme again now using bootstrap 3.

Making the templates polyglot HTML5.

The existing templates could not be served as XHTML as some tags weren't closed.
I also modified some markup to use more semantic tags from HTML5.

Adding a meta description to the generated HTML pages.

theme-bootstrap
---------------

New theme 'bootstrap'.

This theme is based on the 'readable' theme but using plain bootstrap 3.3.5
instead of readable.

It also adds support for the :img configuration in the sitenav that allows links
to be shown as images.

Applying the readable theme again now using bootstrap 3.

Making the templates polyglot HTML5.

The existing templates could not be served as XHTML as some tags weren't closed.
I also modified some markup to use more semantic tags from HTML5.

ljanyst/coleslaw
================

my-stuff
--------

Allow a custom name for the blog index

This allows for the index.html to be generated as a static page.

Rename and export content tag and date accessors.

Make it possible to us functions to compute URLs of generated content.

Add silent mode.

Make sure that the blog index points to the first numeric index.

routing
-------

Allow a custom name for the blog index

This allows for the index.html to be generated as a static page.

Rename and export content tag and date accessors.

Make it possible to us functions to compute URLs of generated content.

Make sure that the blog index points to the first numeric index.

6x13/coleslaw
=============

content-protocol
----------------

Added CTYPE Registry system for content extensions by plugins. Added
metadata plugin for testing content modifier plugins.

content-shouts
--------------

Added CTYPE Registry system for content extensions by plugins. Added
metadata plugin for testing content modifier plugins.

Initial version of shouts.

metadata
--------

Added Metadata Plugin and documentation.

dmitrys99/coleslaw
==================

master
------

Перевод на русский язык темы readable.

Добавлены кавычки.

Make static dir configurable.

chunseoklee/coleslaw
====================

cli-commands
------------

Preliminary CLI work

  * src/cli.lisp: utility functions for CLI processing.
  * cli/launch/build.lisp: Builds the blog/site
  * cli/launch/clean.lisp: Deletes the staging and deploy dir
  * cli/launch/rebuild.lisp: Same as clean and build.
  * cli/launch/serve.lisp: Doesn't work.
  * src/config.lisp: load-config now takes the path to the config file
    as an argument instead of trying to discover it itself.

hdigiorgi/coleslaw
==================

cli-commands
------------

Preliminary CLI work

  * src/cli.lisp: utility functions for CLI processing.
  * cli/launch/build.lisp: Builds the blog/site
  * cli/launch/clean.lisp: Deletes the staging and deploy dir
  * cli/launch/rebuild.lisp: Same as clean and build.
  * cli/launch/serve.lisp: Doesn't work.
  * src/config.lisp: load-config now takes the path to the config file
    as an argument instead of trying to discover it itself.

lisp2-theme
-----------

Starting lisp2 theme.

Color changes.

Added config variations, allowing a same project use more than one config file.

master
------

Now the user can choose directly the configuration file.

multiple-configuration-files
----------------------------

Now the user can choose directly the configuration file.

flingjie/coleslaw
=================

cli-commands
------------

Preliminary CLI work

  * src/cli.lisp: utility functions for CLI processing.
  * cli/launch/build.lisp: Builds the blog/site
  * cli/launch/clean.lisp: Deletes the staging and deploy dir
  * cli/launch/rebuild.lisp: Same as clean and build.
  * cli/launch/serve.lisp: Doesn't work.
  * src/config.lisp: load-config now takes the path to the config file
    as an argument instead of trying to discover it itself.

master
------

Add simple theme.

Add archives.

Refactor archives.

Fix archives.

Refactor macro.

Remove invalid stuff.

ryuslash/coleslaw
=================

cli-commands
------------

Preliminary CLI work

  * src/cli.lisp: utility functions for CLI processing.
  * cli/launch/build.lisp: Builds the blog/site
  * cli/launch/clean.lisp: Deletes the staging and deploy dir
  * cli/launch/rebuild.lisp: Same as clean and build.
  * cli/launch/serve.lisp: Doesn't work.
  * src/config.lisp: load-config now takes the path to the config file
    as an argument instead of trying to discover it itself.

master
------

Add oni theme.

Allow relative URLs in the sitenav for oni.

Add viewport meta-tag.

Add center CSS class.

Fix font issue

Openfontlibrary isn't accessible through HTTPS, so webfont includes
weren't working.

Automatically overflow codeblocks

This looks much better on small screens.

Give unordered lists within articles some space

It is very hard to discern nested lists and regular paragraphs inside
lists opposed to multi-paragraph list items without it.

hoelzl/coleslaw
===============

dev
---

Readable theme should include links to prev/next page.

cmstrickland/coleslaw
=====================

add-post-types
--------------

Additional post metadata - type

Posts can have a 'type' attribute. I want my blog to have different
categories of posts, that are exactly like posts in all respects but are
styled differently ( linkblog entries, photo galleries etc. )
Adding this as metadata makes it easy to wrap posts in a container element to
attach styles to.

Temporary hack of hyde theme

integrate post types into index.

Subposts as a plugin (WIP)

Fixed repo-dir

changed repo-dir -> repo
use 'subpost as class key for writing indexes.

Minimum implementation of subclass for posts

hacky override of discover post method, still needs work.

Find-all matching adjusted

find-all implementation returns false positives for subclasses
added parameter of a predicate to implement matching, with a default
value that preserves original behaviour

added an exact class matcher to purge-all invocation of find-all to stop
it purging subclasses.

dev
---

Readable theme should include links to prev/next page.

document-find-class
-------------------

Find-all matching adjusted

find-all implementation returns false positives for subclasses
added parameter of a predicate to implement matching, with a default
value that preserves original behaviour

added an exact class matcher to purge-all invocation of find-all to stop
it purging subclasses.

Renamed find-all matching parameter to matches-p

In response to feedback on PR-78
  https://github.com/redline6561/coleslaw/pull/78.

Refactored class name matching code

added class-name-p function to util
refactored incremental plugin process-change and documents purge-all
to use class-name-p when matching against exact class names.

a1ip/coleslaw
=============

basic-deploy
------------

Bugfix: Feed should be an abstract class.

Remove scaffolded parallel plugin.

Tentatively factor deploy method into git-hook plugin. TODO follows...

* Deploy :after plugins probably need revision now, and coleslaw-heroku.
* README, HACKING need updates. Plugin-api.md too.
* NEWS needs a carefully worded entry.

Is that what we want?

dev
---

Bugfix: Feed should be an abstract class.

cl-pdx/coleslaw
===============

experimental
------------

Sketch out incremental plugin.

PuercoPop/coleslaw
==================

coleslaw-conf-uiop
------------------

Simplify the setting of COLESLAW-CONF:*BASEDIR*

No need to use a before method specializing in the LOAD-OP. Use uiop's
pathname-parent-directory-pathname instead.

Improve COLESLAW-CONF:*BASEDIR* tests

Check for the presence of plugins and themes sub-directories.

limajs-take2
------------

First stab at plugins.

limajs
------

Make tags more palatable to the repl.

Better error reporting for theme errors

    This covers the case of when a theme doesn't have a specific
    template, say post.html and (theme-fn 'post) is called.

Current-directory not needed, use uiop instead

   Add setf expansion for getcwd.

More robust directory changing

     - Doesn't fail when the directory is missing a trailing '/'
     - When directory doesn't exist it signals an informative
       condition.

WIP towards LimaJS new web page.

First Working(ish) build.

patch-2
-------

Verify that parse-field returns an array.

Otherwise read-content fails to parse files with empty headers as it tries to aref nil.

theme-engine-backend-djula-plugin
---------------------------------

Introduce the theme-engine protocol

The goal of this protocol is to allow users to customize what templates
their themes use. Introduce a new generic function GET-THEME-FN and make
COMPILE-THEME a generic function as well. Move all the cl-closure
template specific code to closure-template-engine

Thanks to Thomas Schaper (@libre-man)!

Add Djula theme engine plugin

There is some friction between djula templates and Coleslaw themes because the
concepts of themes in Coleslaw are strongly tied to cl-closure. Two things in
particular:

1. Templates are named by symbols. Themes have a name under
   namespaces. This is a straighforward map to CL's symbol names and
   packages.
2. Theme functions take a plist as a context, injected data
   in cl-closure terms.

In Djula on the other hand

1. Templates are named by strings or pathnames and are looked up in a
   search path
2. The RENDER-TEMPLATE* function uses keyword arguments,
   instead of a plist.

To bridge over the second difference we use the spreadable argument list
designator of APPLY

To bridge over the first difference we implement a system similar to
cl-closure, where a symbol maps to to the function to be called when
rendering the template. This mapping is stored in *TEMPLATE-STORE*.

theme-engine-backend
--------------------

Introduce the theme-engine protocol

The goal of this protocol is to allow users to customize what templates
their themes use. Introduce a new generic function GET-THEME-FN and make
COMPILE-THEME a generic function as well. Move all the cl-closure
template specific code to closure-template-engine

Thanks to Thomas Schaper (@libre-man)!

twitter-summary-card
--------------------

Add twitter meta-data to posts

  This depends on a pending change to add-injection.

Bind content-text & add quotes to HTML attributes.

Add tests as a PoC. Do not for merge.

vilmibm/coleslaw
================

theme
-----

Example theme.

Flail.

Foo.

Foo.

Foo.

Foo.

Foo.

Foo.

Finish theme, for now.

Fix article.

Make older/newer more visible.

user-defined-routing
--------------------

Update all page-url calls to only use the slug.

Hey, look! User-defined routes are easy. Slot-value is gross though.

Remove page-url methods now stored in the config.

We probably don't want to merge this in until users have had an
adjustment period or without putting a *big* warning in the NEWS.
Users will need to know to update their configs/steal the :routing
block from the example config.

tychoish/coleslaw
=================

master
------

Adding additional data to the environment, making more build factors configurable.

Revisions to configuration option patch in response to code review.

vseloved/coleslaw
=================

master
------

Added possibility to change *config-file* name.

Added BASE-DIR to config.

.gitignore update.

Added tables support using 3bmd-ext-tables extension.

.gitignore.

Handling static/ as a directory.

Added AUTHORS slot to post.

woudshoo/coleslaw
=================

new-theme
---------

Wanted to make slighter different theme.

Lets see if we can make this work.

Changed namespace to new theme name.

Moved atom.tmpl and rss.tmpl into the theme directories.

Also added them to the theme directories.

Merged fix of atom/rss templates with new theme.

Fixed comma space issue.

Updating style.

Removed unused font, added style for article-title in post.tmpl.

Added <base> to template so images work.

Updated template, so links to images work.

Already applied changes to my own templates.

Added first draft of theme documentation.

Updated template.

Removed base href.

Use .jpeg instead of .png.

Slight update to template.

Added secret google key.

Changed timestamp format of the sitemap so google does not complain (and it conforms to the specs.)

relative-links-fix
------------------

Added <base> tag to make relative links work.

theme-doc
---------

Added first draft of theme documentation.

