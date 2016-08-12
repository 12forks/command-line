=======================
chibisov/drf-extensions
=======================

christinegraham/drf-extensions
==============================

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

revert-146-master
-----------------

Revert "Fixed PaginationKeyBit"

Qlzsxxryacttao/drf-extensions
=============================

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

revert-146-master
-----------------

Revert "Fixed PaginationKeyBit"

raphendyr/drf-extensions
========================

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

reimplement_nested_routes_v1
----------------------------

Cleanup and fix router tests for django 1.8 & 1.9

Following command doesn't show failures:
 tox -e django.1.9,django.1.8.lts -- \
   tests_app.tests.unit.routers \
   tests_app.tests.functional.routers.

Reimplement nested routes moving lookups to viewsets

This change requires that parent viewset defines lookup_url_kwarg or
lookup_field. In exchange we do not need to define anything about url kwargs at
register phase.

Instead of defining in register argument how parent kwarg is used in filter,
we do that now in viewset.

Also there is NestedHyperlinkedRelatedField and NestedHyperlinkedIdentityField
which will use our data from viewsets to make writing serializers simpler and
less error prone.

You can also use register with with-statement.

reimplement_nested_routes
-------------------------

Cleanup and fix router tests for django 1.8 & 1.9

Following command doesn't show failures:
 tox -e django.1.9,django.1.8.lts -- \
   tests_app.tests.unit.routers \
   tests_app.tests.functional.routers.

Reimplement nested routes and move lookup config to viewsets

This change requires that parent viewset defines lookup_url_kwarg or
lookup_field. In exchange we do not need to define anything about url kwargs at
register time. Old way is still supported, though pending deprecation.

Also there is NestedHyperlinkedRelatedField and NestedHyperlinkedIdentityField
which will use our config from viewsets to make writing serializers simpler and
less error prone.

You can also use register using with-statement.

ResourceUriField is identical to HyperlinkedIdentityField.

revert-146-master
-----------------

Revert "Fixed PaginationKeyBit"

tevinjoseph/drf-extensions
==========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

master
------

Added page no pagination support

Added page no pagination support. The default PaginationKeyBit wasn't working for me.

Doc string updated for PageNoPaginationKeyBit.

Added docs for PageNoPaginationKeyBit.

Fixed a bug in PaginationKeyBit

PaginationKeyBit wasn't working. It gave the same result for different pages.

Removed docs for PagenoPaginationKeyBit 

Removed docs for PagenoPaginationKeyBit  which is no longer used.

codetarsier/drf-extensions
==========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

AdrianRibao/drf-extensions
==========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

vovanbo/drf-extensions
======================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

patch-1
-------

Fix misprint in key constructor params example

GEOIP_CITY instead of GEOIP_COUNTRY in CityKeyConstructor.

barseghyanartur/drf-extensions
==============================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

shinichi81/drf-extensions
=========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

auvipy/drf-extensions
=====================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

japotter4/drf-extensions
========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

master
------

Update routers.py.

stevelacey/drf-extensions
=========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

patch-1
-------

Pass response when rebuild_after_method_evaluation

I use the `updated_at` timestamp off of the instance in order to generate my object etags – for that I need to be able to retrieve the instance, which I current do by simply calling `view_instance.get_object()` – however, this will use the `lookup_field` and kwarg passed to filter the queryset.

Which is fine. Unless that field changed in an the request, e.g. it was an update.

Being able to grab the instance, or at the very least the response.data in the event that the etag is being calculated after method evaluation would be super handy for this use case.

Pass response from calculate_etag to etag_func.

pdvorchik/drf-extensions
========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

nrabe/drf-extensions
====================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

master
------

Fixing key constructor error when lookup_field!=lookup_url_kwarg.

nemesisdesign/drf-extensions
============================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

gh-pages
--------

Respect parent lookup regex value. Fixes #87.

pratyushmittal/drf-extensions
=============================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

rosscdh/drf-extensions
======================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

fix/cache-docs-update
---------------------

Update documents regarding  DEFAULT_CACHE_RESPONSE_TIMEOUT.

santialbo/drf-extensions
========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

edx/drf-extensions
==================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

Anton-Shutik/drf-extensions
===========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

master
------

Added MappingField.

switchapp/drf-extensions
========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

master
------

Verify client is ok with cached version.

Fix syntax error.

tranvietanh1991/drf-extensions
==============================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

vshih/drf-extensions
====================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

magarcia/drf-extensions
=======================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

lock8/drf-extensions
====================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

dhui/drf-extensions
===================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

frwickst/drf-extensions
=======================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

nestedtempfix
-------------

Add a temporary fix failing queryset filters in nested routes

If a route such as /users/NOT_AN_INTEGER/settings would be
requested and the /users endpoint expects an integer as the second
part of the url then this request would throw a internal server error.

This is a temp fix and a proper solution should be found. Discussion
about this can be found on Github:
https://github.com/chibisov/drf-extensions/issues/86
https://github.com/chibisov/drf-extensions/pull/63
https://github.com/chibisov/drf-extensions/issues/50.

coUrbanize/drf-extensions
=========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

drf-3
-----

Renaming to work with DRF-3.

Tweaked refactoring.

Changed DRF imports.

master
------

Renaming to work with DRF-3.

Tweaked refactoring.

Changed DRF imports.

yprez/drf-extensions
====================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

yingcloud/drf-extensions
========================

dict_filter_backend
-------------------

Started DictFilterBackend development.

DictFilterBackend initial with tests.

Moved changelog to right place.

Suppress ValidationError.

Readme about DictFilterBackend.

Simplified readme.

Implemented and tested queryset methods filtering with django_filter.

Stop queryset_method evaluation for requests without arguments or filtering.

