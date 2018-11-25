==============
eudoxia0/crane
==============

cage2/crane
===========

sqlite
------

Sqlite migrations fixed.

Fixed wrong syntax in foreign slot.

Fixed wrong syntax in foreign slot (sqlite3)

Passes all sqlite3 tests (at least on my system ;-) )

ibawt/crane
===========

fix_postgres_prepare
--------------------

Loop over external constraints.

jasonmelbye/crane
=================

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

Harleqin/crane
==============

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

KirillTemnov/crane
==================

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

wnortje/crane
=============

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

fisxoj/crane
============

external-constraints
--------------------

Handle external constraints during table creation

`cl-dbi` doesn't like multiple concatenated statements, so issue them in
series and wrap them in a transaction in case something fails.

master
------

Base migrations on introspection data.

Make migrations actually occur.

Add crane.introspection, #'table-exists-p.

Ugly but working table definition introspection.

Add introspection/migration things.

Handle failed migrations more gracefull for now.

Make deftable return the defined class

Makes it easy to @export.

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

mmontone/crane
==============

master
------

Extensible database types.

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

spacebat/crane
==============

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

fstamour/crane
==============

master
------

Fixed "Tried to call VALUE-LIST on a dotted pair.".

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

PuercoPop/crane
===============

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

ultrahertz/crane
================

migrations-rewrite
------------------

Improve meta.lisp a little.

Update copyright years.

Load crane.meta before crane.sql.

Remove the col-check option for now.

Syntax fixes.

Add a richer error system.

Update the rest of the code to use the new error classes.

Fix connection spec tests.

Split meta.lisp into four files.

Delete some stuff that's already in meta/diff.lisp.

Represent foreign key relations with a class.

Add some type slot options to classes.

Export some symbols.

Use classes for SQL types.

Load crane.types before crane.meta, don't load the rest of the code since it's broken.

Minor fix.

Add some methods to get the SQL name of SQL types.

Use a more consistent naming convention.

Add methods for serializing and loading symbols.

Add a function to reconstruct a type from its SQL representation.

maurodec/crane
==============

master
------

Visual improvements.

