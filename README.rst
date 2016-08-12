TODO
====

* Use OAuth over basic auth.
* Optimize processing speed.
* Compare branches to thouse which exists in base repo.
  For example if base repository is ``chibisov/drf-extensions`` and it
  has non merged to master branch ``@dict_filter_backend``, then this
  branch in all forks should be compared with this branch in base repo,
  not with ``@master``.
* Ability to ignore some branches, like ``gh-pages`` in drf-extensions.
  Probably, this will be solved with previous task.
