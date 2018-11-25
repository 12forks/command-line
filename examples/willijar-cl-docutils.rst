====================
willijar/cl-docutils
====================

scymtym/cl-docutils
===================

master
------

Moved RST parser into sub-directory
* docutils.asd: added parsers/rst module; adapted paths
* parsers/defpackage.lisp: removed docutils.parser.{rst,tables}
  packages; these are now in parsers/rst/package.lisp
* parsers/rst/directives.lisp: renamed from parsers/directives.lisp
* parsers/rst/inline.lisp: renamed from parsers/inline.lisp
* parsers/rst/regexp.lisp: renamed from parsers/regexp.lisp
* parsers/rst/roles.lisp: renamed from parsers/roles.lisp
* parsers/rst/rst.lisp renamed from parsers/rst.lisp
* parsers/rst/tables.lisp: renamed from parsers/tables.lisp
* parsers/rst/package.lisp: new file; package definitions for
  docutils.parsers.{rst,tables}

Added protocol and conditions in parser module
* docutils.asd (system docutils): added files parsers/protocol.lisp
  and parsers/protocol.lisp
* parsers/conditions.lisp: new file; contains conditions for the
  parser module
* parsers/protocol.lisp: new file; contains a generic function
  protocol for the parser module
* parsers/defpackage.lisp (package docutils.parser): added exported
  symbols docstring-parse-error, parse-error-source,
  parse-error-parser and parse-error-cause.

