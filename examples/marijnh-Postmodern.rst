==================
marijnh/Postmodern
==================

svetlyak40wt/Postmodern
=======================

support-ipv6-only-machinesrepl
------------------------------

Added support for IPv6 only machines on SBCL.

Previously, cl-postgres just ignored any IPv6 addresses resolving
database's hostname.

Added condition for get-host-address.

radisb/Postmodern
=================

master
------

Update-dao: added updatable fields (= slots that are bound) so that when update-dao is called the unbound slots are not included in the fields to be updated.

Update table.lisp.

ibawt/Postmodern
================

fix_schema_functions
--------------------

Fix schema changes.

mkrauss/Postmodern
==================

master
------

Close parsed / prepared statement

Message, protocol, and public interfaces for closing a parsed / prepared
statement. Closing a named statement frees resources and allows a
different statement to be parsed with the same name.

Test for unprepare-query.

Documentation for unprepare-query.

PuercoPop/Postmodern
====================

patch-1
-------

Enable-s-sql-syntax properly listed as a function in the docs.

patch-2
-------

Typo in the documentation of database-connection


Representatino -> Representation.

with-transaction
----------------

Simplify with-transaction implementation.

rick-monster/Postmodern
=======================

master
------

Add global var to allow mixed case symbols.

mpemer/Postmodern
=================

master
------

Added :alter-column operation

Added :alter-table :alter-column operation, which will generate SQL of the type

    ALTER TABLE some_table ALTER COLUMN new_column_spec.

ebdreger/Postmodern
===================

dao-view
--------

Rudimentary groundwork: Preparing to add view support to DAOs.

webcheckout/Postmodern
======================

better-transaction-hooks
------------------------

Ensure that transaction-open-p, *current-logical-transaction*, and *transaction-level* correctly reflect the state of the transaction (that is, closed) at the time that any abort or commit hooks run. Also add abort-logical-transaction and commit-logical-transaction methods (and documentation) for use with with-logical-transaction, where the user will not know whether the handle represents a savepoint or transaction.

generic_transaction
-------------------

When computing the column names to use for insert/update methods on dao instance consider the class's column-map and not just the slots' names.

When building up s-sql forms in the dao readers/writers make sure to use :raw for the column names (which we have as strings and not symbols)

Make sure to compute the right sql column name for the :returning columns in insert-dao.

Tests for :col-name DAO slot argument.

When computing the column names to use for insert/update methods on dao instance consider the class's column-map and not just the slots' names.

When building up s-sql forms in the dao readers/writers make sure to use :raw for the column names (which we have as strings and not symbols)

Make sure to compute the right sql column name for the :returning columns in insert-dao.

Tests for :col-name DAO slot argument.

Add failing test showing database error raised when attempting to write empty arrays.

Fix empty array problem by using Postgres's array literal syntax for empty arrays.

Removed all whitespace changes on branch vs master (no functional changes)

This commit serves to make the diff between this branc and master easier
to read, review and merge.

Use make-symbol instead of (list :raw ...) to inject a column name into an s-sql query.

Added connection-backend-info to the cl-postgres connection.

Whenever we create a new connection as part of the initialization we
send a query and get the backend's user, pid and database and store this
lisp side if it needs to be used later on (we collect the information at
connection time so that it's available even if the connection is broken
and can't run the query itself).

Export commit-logical-transaction and abort-logical-transaction.

Make the functions for committing and aborting transactions (and savepoints) generic functions.

Added *transaction-class* and *savepoint-class* to allow user code to  select which classes are used for transactions and savepoints.

Added the special variable *current-savepoint* and *current-transaction*; these are bound by call-with-savepoint and call-with-transaction respectively.

master
------

When computing the column names to use for insert/update methods on dao instance consider the class's column-map and not just the slots' names.

When building up s-sql forms in the dao readers/writers make sure to use :raw for the column names (which we have as strings and not symbols)

Make sure to compute the right sql column name for the :returning columns in insert-dao.

Tests for :col-name DAO slot argument.

When computing the column names to use for insert/update methods on dao instance consider the class's column-map and not just the slots' names.

When building up s-sql forms in the dao readers/writers make sure to use :raw for the column names (which we have as strings and not symbols)

Make sure to compute the right sql column name for the :returning columns in insert-dao.

Tests for :col-name DAO slot argument.

Add failing test showing database error raised when attempting to write empty arrays.

Fix empty array problem by using Postgres's array literal syntax for empty arrays.

Removed all whitespace changes on branch vs master (no functional changes)

This commit serves to make the diff between this branc and master easier
to read, review and merge.

Use make-symbol instead of (list :raw ...) to inject a column name into an s-sql query.

Added connection-backend-info to the cl-postgres connection.

Whenever we create a new connection as part of the initialization we
send a query and get the backend's user, pid and database and store this
lisp side if it needs to be used later on (we collect the information at
connection time so that it's available even if the connection is broken
and can't run the query itself).

Export commit-logical-transaction and abort-logical-transaction.

nested-joins
------------

Allow nested joins.

Add documentation for nested and chained join syntax.

Handle table aliases correctly.

More concise.

segv/Postmodern
===============

call_with_transaction
---------------------

Don't supply a name to pomo:with-transaction if we don't intend to use the transaction binding.

Refactor with-(transaction|savepoint|logical-transaction) into macros+call-with functions.

This patch makes no functional changes however it is now possible to
trace, using plain old cl:trace, the transaction/savepoint stacking
macros.

col_name_dao
------------

When computing the column names to use for insert/update methods on dao instance consider the class's column-map and not just the slots' names.

When building up s-sql forms in the dao readers/writers make sure to use :raw for the column names (which we have as strings and not symbols)

Make sure to compute the right sql column name for the :returning columns in insert-dao.

Tests for :col-name DAO slot argument.

Removed all whitespace changes on branch vs master (no functional changes)

This commit serves to make the diff between this branc and master easier
to read, review and merge.

Use make-symbol instead of (list :raw ...) to inject a column name into an s-sql query.

handler_bind_error_handling
---------------------------

Make error handling in with-syncing not clobber the backtrace.

Use handler-bind instead of handler-case+error when cleaning up after
end-of-file errors. Also make sure the end-of-file error was signalled
on the socket stream we've created, if it was signalled on another
stream there's nothing extra to do.

Don't clobber backtrace when handling errors in with-reconnect-restart.

Use handler-bind instead of handler-case; The existing error handlers
would simply resignal the errors, since with handler-bind this isn't
neccessary the retry function and its invocation have been removed.

enaeher/Postmodern
==================

empty-arrays
------------

Add failing test showing database error raised when attempting to write empty arrays.

Fix empty array problem by using Postgres's array literal syntax for empty arrays.

master
------

Do-query-dao working.

Do-select-dao working.

Export do-select-dao.

Documentation for do-query-dao and do-select-dao.

Add failing tests for logical transactions.

Implement with-logical-transaction, ensure-transaction, commit-hooks, and abort-hooks.

Documentation.

Whitespace.

Correct use of eos:is in several tests.

Change with-savepoint to have same invocation as with-transaction, including making the name optional.

Wrap commit and abort hooks in unwind-protect.

Whitespace.

Correct use of eos:is in several tests.

Change with-savepoint to have same invocation as with-transaction, including making the name optional.

Wrap commit and abort hooks in unwind-protect.

Fix bug in *transaction-level* logic; add *current-logical-transaction*

Fix unwind-protect calls.

transactions
------------

Add failing tests for logical transactions.

Implement with-logical-transaction, ensure-transaction, commit-hooks, and abort-hooks.

Documentation.

Whitespace.

Correct use of eos:is in several tests.

Change with-savepoint to have same invocation as with-transaction, including making the name optional.

Wrap commit and abort hooks in unwind-protect.

Fix bug in *transaction-level* logic; add *current-logical-transaction*

Fix unwind-protect calls.

Allow more than one form in the body of pomo:ensure-transaction.

Also refactored so that the macro expands into a function
call (call-with-ensured-transaction) so that there's a function that can
be traced (and that appears on the call stack) and so that there's less
back quoting.

Refactor with-logical-transaction into a macro which simply expands into a call to call-with-logical-transaction

This avoids duplicating the body forms in the macroexpansion output and
allow one to trace 'calls' to with-logical-transaction by tracing the
function call-with-logical-transaction.

Fix call to with-savepoint in save-dao/transaction to work with new api.

Revert "Refactor with-logical-transaction into a macro which simply expands into a call to call-with-logical-transaction"

This reverts commit 80d3129aafc2f087d2d1f128b48ba43b41966b81.

Go back to old with-savepoint arg list.

window-partition-by
-------------------

Minor formatting fixes.

Allow partitioning by multiple columns when using window
functions.

Postgres requires that a WINDOW clause, if one exists, follow the WHERE,
GROUP BY, and HAVING clauses, if they exist.

attila-lendvai/Postmodern
=========================

hu.dwim
-------

Be more clear around ratio serialization.

 * Use 'ratio' instead of 'rational' in some names
 * Signal a more descriptive error from WRITE-RATIO-AS-FLOATING-POINT
 * Add CONTINUE restarts to WRITE-RATIO-AS-FLOATING-POINT in case
   the ratio cannot be serialized without a loss of precision, and
   *SILENTLY-TRUNCATE-RATIOS* is false.

Add a SERIALIZE-FOR-POSTGRES generic method.

It can be customized to serialize lisp values directly into the socket
stream either as string or as bytes. Defaults to TO-SQL-STRING.

E.g. the integration with local-time can use it to emit the binary
timestamp format of PostgreSQL and avoid printing and parsing of
human readable timestamp strings.

Do not ignore silently any precision loss by default.

ratio
-----

Be more clear around ratio serialization.

 * Use 'ratio' instead of 'rational' in some names
 * Signal a more descriptive error from WRITE-RATIO-AS-FLOATING-POINT
 * Add CONTINUE restarts to WRITE-RATIO-AS-FLOATING-POINT in case
   the ratio cannot be serialized without a loss of precision, and
   *SILENTLY-TRUNCATE-RATIOS* is false.

Do not ignore silently any precision loss by default.

dimitri/Postmodern
==================

master
------

Rework bulk-copy API to allow several COPY within the same transaction.

open-db-writer
--------------

Rework bulk-copy API to allow several COPY within the same transaction.

protocol-error-fields
---------------------

Rework bulk-copy API to allow several COPY within the same transaction.

Improve error reporting, providing HINT, DETAIL and CONTEXT as separate entries.

The PostgreSQL protocol defines error fields with some precision, as can be
read at
http://www.postgresql.org/docs/current/static/protocol-error-fields.html.
This patch improves the database-error condition to expose important fields
separately and fixes get-error so that news fields are properly filled when
an error occurs.

zickzackv/Postmodern
====================

fix-namespace-quoting
---------------------

Fixing quoting of namespace identifiers

namespace identifiers are quoated with double quoates (") using
s-sql:to-sql-name.  s-sql:to-sql-name substitutes nonalphanumeric
characters with underscore (_).

This also means that you have to create namespaces with funny characters
from within postmodern in order to access them correctly.

Fix: quoting namespace identifiers w/ to-sql-name.

namespaces
----------

Initial namespace support.

Realy set the search path! (and do not try to change name)

Let table-exists-p honor namespaces (like list-tables)

Adding tests for with-schema.

Testing the options for with-schema like :drop-after and :strict are
still missing.

Removing alexandrina dependency.

Adding documentation for schemata.

Changed with-schema to use a helper method do-with-schema.

schema-name-escaping
--------------------

Fixing double escape and cascading deletion.

waywardmonkeys/Postmodern
=========================

fix-typos
---------

Fix typos in documentation.

hanshuebner/Postmodern
======================

master
------

Make table-description return columns in table order.

fvides/Postmodern
=================

add-@@-operator
---------------

Added FTS match :@@ operator.

update-add-from-clause
----------------------

Extended the :update operation with a :from clause.

MakarovAlexey/Postmodern
========================

master
------

Initial code for large objects.

Initial code for large objects.

Some implementation.

Some implementation.

Implementation.

Implemented input streams.

Implemented output streams.

Fixed compilation.

Working on tests.

Implemented intup and output streams.

daimrod/Postmodern
==================

case-else
---------

Added ELSE clause to CASE.

Mentioned :ELSE clause in the documentation of the CASE statement.

join-using
----------

Support USING clause in JOIN.

Mentioned :using in the documentation.

master
------

Support USING clause in JOIN.

Added OVER operator.

Added :parition-by operator.

Do not expand form in :ORDER-BY if it's NIL.

This change has two reasons:

1. it doesn't make really sense to have something like
false ORDER BY ...

2. We can use it with windows
e.g. SELECT f1 OVER (ORDER BY f2)

Added ELSE clause to CASE.

Added VALUES operator.

Added parentheses around PARTITION BY.

partition-over
--------------

Added OVER operator.

Added :parition-by operator.

Do not expand form in :ORDER-BY if it's NIL.

This change has two reasons:

1. it doesn't make really sense to have something like
false ORDER BY ...

2. We can use it with windows
e.g. SELECT f1 OVER (ORDER BY f2)

Added parentheses around PARTITION BY.

mcna/Postmodern
===============

edi-rdf-bulk-copy
-----------------

Add bulk-copy and support to this repository.

Make bulk-copy.lisp acl specific for now.

Add support for count DISTINCT.

Minor changes to make it compile on sbcl.

Revert "Minor changes to make it compile on sbcl"

This reverts commit 37c3e2d3bbfe13059e8a406427a68cecd8b13e96.

Add SCHEMA-NAME argument to TABLE-DESCRIPTION

The SCHEMA-NAME argument can be used to restrict the columns that are
returned by the TABLE-DESCRIPTION to a certain schema.  By default,
columns from all schemata are returned.

Documentation update for TABLE-DESCRIPTION change.

Simplify outputted query in table-description.

Added VALUES operator.

Notification support from Zach Beane with enhancements.

Documentation updates for notifications.

Add :unlisten SQL op.

Working on making this more reliable.

Seems to reliably escape data, and is a bit faster, too.

Fixed for Allegro.

Use consistent feature test for Allegro.

Fix really random typo, and example in comment.

master
------

Make table-description return columns in table order.

Muffle style-warning during compilation.

Separate dumped sql rows with newlines.

notification-support
--------------------

Notification support from Zach Beane with enhancements.

Documentation updates for notifications.

Add :unlisten SQL op.

pull-me
-------

Add SCHEMA-NAME argument to TABLE-DESCRIPTION

The SCHEMA-NAME argument can be used to restrict the columns that are
returned by the TABLE-DESCRIPTION to a certain schema.  By default,
columns from all schemata are returned.

Documentation update for TABLE-DESCRIPTION change.

Ralith/Postmodern
=================

master
------

More informative prepared query naming to improve error reporting.

mishoo/Postmodern
=================

add-array-contains-ops
----------------------

Added :not-null operator (it was already used in some examples in the doc)

Trying a different approach than the target-class hack in build-dao-methods

(we just evaluate the code that defines methods; since it happens at compile
time it shouldn't be a big deal.  this fix was suggested by Marijn)

Added upsert-dao method

save-dao seems to pollute Postgres logs with duplicate key errors.  A
simpler method (which works both in and out a transactions) is to update
first, and if there are unbound slots or no rows were updated then insert.

Both save-dao and save-dao/transaction could now just call upsert-dao.

Named from http://en.wikipedia.org/wiki/Upsert.

Add defgeneric for upsert-dao and update documentation.

Return (values object is-new) from upsert-dao

is-new specifies whether the object was inserted (T) or updated (NIL)

Add array operators: @> (contains) and @< (is contained by)

master
------

Added :not-null operator (it was already used in some examples in the doc)

Trying a different approach than the target-class hack in build-dao-methods

(we just evaluate the code that defines methods; since it happens at compile
time it shouldn't be a big deal.  this fix was suggested by Marijn)

Added upsert-dao method

save-dao seems to pollute Postgres logs with duplicate key errors.  A
simpler method (which works both in and out a transactions) is to update
first, and if there are unbound slots or no rows were updated then insert.

Both save-dao and save-dao/transaction could now just call upsert-dao.

Named from http://en.wikipedia.org/wiki/Upsert.

Add defgeneric for upsert-dao and update documentation.

Return (values object is-new) from upsert-dao

is-new specifies whether the object was inserted (T) or updated (NIL)

galdor/Postmodern
=================

master
------

Add hstore operators.

Add support for NIL as a limit value

In that case, expand to LIMIT ALL (i.e. no limit).

paul7/Postmodern
================

master
------

Prevent nested with-connection from reconnecting to the same database.

Defprepared-with-names.

Documentation update.

Revert "prevent nested with-connection from reconnecting to the same database"

This reverts commit 2d42e28b9791b2f8930ba35d6cb3b4be47a6ee5b.

